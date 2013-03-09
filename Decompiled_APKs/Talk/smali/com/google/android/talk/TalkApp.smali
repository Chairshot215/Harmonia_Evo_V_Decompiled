.class public Lcom/google/android/talk/TalkApp;
.super Landroid/app/Application;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;,
        Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;,
        Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;,
        Lcom/google/android/talk/TalkApp$AccountInfo;,
        Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;,
        Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    }
.end annotation


# static fields
.field private static mSelfAvatarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/DatabaseUtils$AvatarData;",
            ">;"
        }
    .end annotation
.end field

.field private static mTalkLogLevel:I


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAccountsLoaded:Z

.field private final mAccountsLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

.field mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field private mAppHandler:Landroid/os/Handler;

.field mAvailablePresenceIcon:[I

.field mAwayPresenceIcon:[I

.field mBusyPresenceIcon:[I

.field public mChatStatusIcon:Landroid/graphics/drawable/Drawable;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mDefaultStatusStrings:[Ljava/lang/String;

.field private volatile mDefaultTextNotificationUri:Ljava/lang/String;

.field mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

.field private mFindRingtone:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGTalkServiceIntent:Landroid/content/Intent;

.field public mGenericAvatar:Landroid/graphics/drawable/Drawable;

.field private mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field public mGroupAvatar:Landroid/graphics/drawable/Drawable;

.field public mGroupChatInvitations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field

.field mInvisiblePresenceIcon:I

.field private mJidDomainsToHide:[Ljava/lang/String;

.field mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field mOfflineColorFilter:Landroid/graphics/ColorFilter;

.field mOfflinePresenceIcon:I

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private final mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mServiceState:Lcom/google/android/talk/TalkServiceState;

.field private final mSettingsMonitor:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 206
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 114
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    .line 115
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    .line 116
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/google/android/talk/TalkServiceState;

    invoke-direct {v0}, Lcom/google/android/talk/TalkServiceState;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    new-instance v0, Lcom/google/android/talk/TalkApp$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$1;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/google/android/talk/TalkApp$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$2;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 1231
    new-instance v0, Lcom/google/android/talk/TalkApp$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$5;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mFindRingtone:Landroid/os/AsyncTask;

    .line 208
    const-string v0, "talk"

    const-string v1, "##### TalkApp constructor #####"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    .line 211
    return-void
.end method

.method public static LOG(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "loglevel"
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 235
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt p0, v0, :cond_0

    .line 236
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 245
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"
    .parameter "tr"

    .prologue
    .line 261
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 241
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 253
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public static Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1049
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAllAccounts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/TalkApp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp;->pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->verifyAccountInPrefs()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/talk/TalkApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->broadcastAccountListChanged()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    return-object p1
.end method

.method private bindService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "bindService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 322
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    const-string v0, "--- bindGTalkService ---"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/talk/TalkApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v0, "skipping bindService; bind already pending"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastAccountIdUpdate(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 9
    .parameter "accountInfo"

    .prologue
    .line 959
    iget-object v7, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 960
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 961
    .local v3, count:I
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    new-array v8, v3, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 963
    .local v1, accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastAccountIdUpdate count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 967
    :cond_0
    move-object v2, v1

    .local v2, arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 968
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    instance-of v6, v0, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;

    if-eqz v6, :cond_1

    .line 969
    check-cast v0, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;

    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    invoke-interface {v0, p1}, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;->onAccountIdUpdated(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 967
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 963
    .end local v1           #accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v2           #arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v3           #count:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 973
    .restart local v1       #accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v2       #arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v3       #count:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    return-void
.end method

.method private broadcastAccountListChanged()V
    .locals 9

    .prologue
    .line 980
    iget-object v7, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 981
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 982
    .local v3, count:I
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    new-array v8, v3, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 984
    .local v1, accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 986
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastAccountListChanged count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 988
    :cond_0
    move-object v2, v1

    .local v2, arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 989
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    invoke-interface {v0}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    .line 988
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 984
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v1           #accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v2           #arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v3           #count:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 991
    .restart local v1       #accountsLoadedListeners:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v2       #arr$:[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v3       #count:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    return-void
.end method

.method private computeCapabilityIndex(I)I
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 403
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x2

    .line 411
    :goto_0
    return v0

    .line 407
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructCachedDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 361
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    .line 363
    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGroupAvatar:Landroid/graphics/drawable/Drawable;

    .line 365
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x108006b

    aput v3, v2, v4

    .line 366
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x10800b1

    aput v3, v2, v5

    .line 367
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x10800ae

    aput v3, v2, v6

    .line 369
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x1080067

    aput v3, v2, v4

    .line 370
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x10800af

    aput v3, v2, v5

    .line 371
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x10800ac

    aput v3, v2, v6

    .line 373
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x1080068

    aput v3, v2, v4

    .line 374
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x10800b0

    aput v3, v2, v5

    .line 375
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x10800ad

    aput v3, v2, v6

    .line 377
    const v2, 0x108006a

    iput v2, p0, Lcom/google/android/talk/TalkApp;->mOfflinePresenceIcon:I

    .line 378
    const v2, 0x1080069

    iput v2, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:I

    .line 380
    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 381
    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 383
    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 384
    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 386
    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mChatStatusIcon:Landroid/graphics/drawable/Drawable;

    .line 388
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, awayString:Ljava/lang/String;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0c0002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f0c0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    .line 398
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0x557f7f80

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mOfflineColorFilter:Landroid/graphics/ColorFilter;

    .line 400
    return-void
.end method

.method public static debugLoggable()Z
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x3

    sget v1, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "activity"

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method public static getLogLevelForTag(Ljava/lang/String;)I
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 1069
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1078
    :goto_0
    return v0

    .line 1071
    :cond_0
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1072
    goto :goto_0

    .line 1073
    :cond_1
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1074
    goto :goto_0

    .line 1075
    :cond_2
    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 1076
    goto :goto_0

    .line 1078
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static getLogLevelForTalk()I
    .locals 1

    .prologue
    .line 1059
    const-string v0, "talk"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getLogLevelForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTalkLogLevel()I
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private initializeDefaultTextNotificationUri()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mFindRingtone:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1202
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 612
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkApp] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 14
    .parameter "imSession"

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    const-string v0, "talk"

    const-string v12, "pruneOldChats: empty IM session, bail."

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 660
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 661
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 662
    .local v9, now:J
    const-string v0, "gtalk_chat_expire"

    const-wide/32 v12, 0xdbba00

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v1, v9, v12

    .line 665
    .local v1, expire:J
    const-string v0, "gtalk_chat_expire_for_other_client"

    const-wide/32 v12, 0x36ee80

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v5, v9, v12

    .line 668
    .local v5, expireForChatsOnOtherClient:J
    const-string v0, "gtalk_chat_message_lifetime"

    const-wide/32 v12, 0x240c8400

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v3, v9, v12

    .line 672
    .local v3, expireHard:J
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .local v7, closeChatIfTimeStampIsZero:Z
    :goto_1
    move-object v0, p1

    .line 673
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gtalkservice/IImSession;->pruneOldChatSessions(JJJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    .end local v1           #expire:J
    .end local v3           #expireHard:J
    .end local v5           #expireForChatsOnOtherClient:J
    .end local v7           #closeChatIfTimeStampIsZero:Z
    .end local v9           #now:J
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 678
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v12, "asyncPruneChats caught "

    invoke-static {v0, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 672
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v1       #expire:J
    .restart local v3       #expireHard:J
    .restart local v5       #expireForChatsOnOtherClient:J
    .restart local v9       #now:J
    .restart local v11       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static queryDebugLevel()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 196
    const-string v1, "talk"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return v0

    .line 198
    :cond_0
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshTalkLogLevel()I
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 219
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1223
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1227
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextRingtoneURI(Ljava/lang/String;)V

    .line 1229
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneUriForAllAccounts(Ljava/lang/String;)V
    .locals 4
    .parameter "ringtoneUri"

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/DatabaseUtils;->getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1218
    .local v1, id:J
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V

    goto :goto_0

    .line 1220
    .end local v1           #id:J
    :cond_0
    return-void
.end method

.method public static verboseLoggable()Z
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x2

    sget v1, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyAccountInPrefs()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 910
    const-string v6, "gtalk_prefs"

    invoke-virtual {p0, v6, v3}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 912
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "accountId"

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 913
    .local v0, accountId:J
    const-string v6, "username"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, username:Ljava/lang/String;
    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 916
    .local v3, clear:Z
    :cond_1
    if-eqz v3, :cond_2

    .line 918
    invoke-virtual {p0, v5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    .line 919
    .local v2, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_2

    .line 920
    const/4 v3, 0x0

    .line 923
    .end local v2           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_2
    if-eqz v3, :cond_3

    .line 925
    invoke-static {p0}, Lcom/google/android/talk/AccountLoginUtils;->clearActiveAccountPrefs(Landroid/content/Context;)V

    .line 927
    :cond_3
    return-void
.end method


# virtual methods
.method public addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 930
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 931
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 932
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 933
    monitor-exit v3

    .line 941
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    iget-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    if-eqz v2, :cond_1

    .line 939
    invoke-interface {p1}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    goto :goto_0

    .line 937
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V
    .locals 1
    .parameter "target"
    .parameter "accountId"
    .parameter "r"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/talk/TalkServiceState;->addSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 500
    return-void
.end method

.method public addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V
    .locals 1
    .parameter "target"
    .parameter "r"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/TalkServiceState;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 495
    return-void
.end method

.method public asyncPruneOldChatsAndMessages(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .parameter "imSession"

    .prologue
    .line 642
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/TalkApp$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/TalkApp$4;-><init>(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method public clearSelfAvatarCache()V
    .locals 1

    .prologue
    .line 1195
    monitor-enter p0

    .line 1196
    :try_start_0
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1197
    monitor-exit p0

    .line 1198
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, p5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1096
    if-nez v1, :cond_1

    .line 1097
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionStateChanged: can\'t find account for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    :goto_0
    return v0

    .line 1099
    :cond_1
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1101
    iput-wide p3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 1102
    const/4 v0, 0x1

    .line 1107
    invoke-direct {p0, v1}, Lcom/google/android/talk/TalkApp;->broadcastAccountIdUpdate(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    goto :goto_0

    .line 1108
    :cond_2
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_0

    .line 1109
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateChanged: account for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but the state change says the accountId is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpAccountList()V
    .locals 6

    .prologue
    .line 1031
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAccountList account count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump - account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " username: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signedIn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method public ensureServiceBound()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "ensureServiceBound calling bindService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    goto :goto_0
.end method

.method getAccountIdFromActivityIntent(Landroid/content/Intent;)J
    .locals 4
    .parameter "intent"

    .prologue
    const-wide/16 v0, 0x0

    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string v2, "talk"

    const-string v3, "[TalkApp] getAccountIdFromActivityIntent: null intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 714
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 716
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 717
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 718
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 728
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    return-object v0

    .line 716
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 728
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "username"

    .prologue
    .line 732
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 733
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 734
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 735
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 736
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 746
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    return-object v0

    .line 734
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 746
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccounts mAccountList count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1016
    const-string v5, "gtalk_prefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1018
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "accountId"

    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1019
    .local v0, accountId:J
    const-string v5, "username"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, username:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1022
    .local v2, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    .line 1023
    :cond_0
    new-instance v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v2           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 1024
    .restart local v2       #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iput-wide v0, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 1025
    iput-object v4, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 1027
    :cond_1
    return-object v2
.end method

.method public getAudioVideoButtonIcon(I)I
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 459
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const v0, 0x7f02006e

    .line 464
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const v0, 0x7f02003e

    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "clientType"
    .parameter "lightBackground"

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, retVal:Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 490
    :goto_0
    return-object v0

    .line 477
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 479
    :goto_1
    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 482
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 484
    :goto_2
    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesaturedColorFilter()Landroid/graphics/ColorFilter;
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 1117
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1119
    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1121
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1124
    const v2, 0x3e99999a

    .line 1125
    sub-float v3, v7, v2

    .line 1126
    const/high16 v4, 0x437f

    add-float/2addr v2, v6

    mul-float/2addr v2, v4

    .line 1128
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v2, v4, v5

    const/4 v5, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v6, v4, v5

    const/16 v5, 0x9

    aput v2, v4, v5

    const/16 v5, 0xa

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v6, v4, v5

    const/16 v5, 0xc

    aput v3, v4, v5

    const/16 v3, 0xd

    aput v6, v4, v3

    const/16 v3, 0xe

    aput v2, v4, v3

    const/16 v2, 0xf

    aput v6, v4, v2

    const/16 v2, 0x10

    aput v6, v4, v2

    const/16 v2, 0x11

    aput v6, v4, v2

    const/16 v2, 0x12

    aput v7, v4, v2

    const/16 v2, 0x13

    aput v6, v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1135
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1136
    invoke-virtual {v2, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 1138
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkServiceState;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    return-object v0
.end method

.method public getGenericAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/GmailProviderWrapper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 585
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 603
    :goto_0
    return-object v1

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 590
    .local v2, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v2, :cond_1

    .line 591
    const-string v3, "talk"

    const-string v4, "[TalkApp] getImSessionForAccountId: null GTalk service!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    const/4 v1, 0x0

    .line 598
    .local v1, retVal:Lcom/google/android/gtalkservice/IImSession;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImSessionForAccountId: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;
    .locals 4
    .parameter "intent"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const-string v1, "talk"

    const-string v2, "[TalkApp] getImSessionFromActivityIntent: null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    .line 581
    :goto_0
    return-object v1

    .line 580
    :cond_0
    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 581
    .local v0, accountId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.talk.SuggestionProvider"

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    .locals 4
    .parameter "account"
    .parameter "update"

    .prologue
    .line 1180
    monitor-enter p0

    .line 1181
    :try_start_0
    sget-object v2, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .line 1182
    .local v0, ad:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    if-eqz v0, :cond_0

    .line 1183
    invoke-interface {p2, v0}, Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;->run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1189
    :goto_0
    monitor-exit p0

    .line 1190
    return-void

    .line 1185
    :cond_0
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;-><init>(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 1187
    .local v1, task:Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1189
    .end local v0           #ad:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .end local v1           #task:Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStatusColorId(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 454
    :pswitch_0
    const v0, 0x7f020097

    :goto_0
    return v0

    .line 440
    :pswitch_1
    const v0, 0x7f0200ac

    goto :goto_0

    .line 444
    :pswitch_2
    const v0, 0x7f020005

    goto :goto_0

    .line 447
    :pswitch_3
    const v0, 0x7f020023

    goto :goto_0

    .line 450
    :pswitch_4
    const v0, 0x7f02009e

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getStatusIcon(II)I
    .locals 2
    .parameter "status"
    .parameter "capabilities"

    .prologue
    .line 415
    invoke-direct {p0, p2}, Lcom/google/android/talk/TalkApp;->computeCapabilityIndex(I)I

    move-result v0

    .line 417
    .local v0, capabilityIndex:I
    packed-switch p1, :pswitch_data_0

    .line 433
    iget v1, p0, Lcom/google/android/talk/TalkApp;->mOfflinePresenceIcon:I

    :goto_0
    return v1

    .line 419
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 429
    :pswitch_3
    iget v1, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:I

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isAccountIdValid(J)Z
    .locals 5
    .parameter "accountId"

    .prologue
    .line 1002
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->waitForAccounts()V

    .line 1004
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    .line 1005
    .local v0, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1007
    .local v2, info:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1008
    const/4 v3, 0x1

    .line 1012
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 2

    .prologue
    .line 607
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 608
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public loadAccounts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 811
    const-string v1, "loadAccounts"

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 812
    iput-boolean v4, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    .line 813
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 815
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;-><init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    .line 816
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 817
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 277
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mAppHandler:Landroid/os/Handler;

    .line 278
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 280
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->initialize(Lcom/google/android/talk/TalkApp;)V

    .line 281
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->initialize(Landroid/content/Context;)V

    .line 282
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/talk/SettingsCache;->initialize(Landroid/content/Context;Landroid/os/Handler;)V

    .line 283
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->constructCachedDrawables()V

    .line 284
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->loadAccounts()V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/TalkApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/talk/FeatureManager;->setAvailableFeaturesAllAccounts(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 293
    new-instance v1, Lcom/google/android/talk/GlobalCallStateMonitor;

    invoke-direct {v1, p0}, Lcom/google/android/talk/GlobalCallStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

    .line 294
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

    invoke-virtual {v1}, Lcom/google/android/talk/GlobalCallStateMonitor;->startListening()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->initializeDefaultTextNotificationUri()V

    .line 297
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "##### onTerminate #####"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 303
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->destroyAll(Landroid/content/Context;)V

    .line 304
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->destroyAll(Landroid/content/Context;)V

    .line 305
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->destroyAll()V

    .line 307
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 314
    return-void
.end method

.method rebindService()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkServiceState;->clearService()V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 346
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "talk"

    const-string v2, "Can\'t unbind service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 944
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 945
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 946
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 947
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    monitor-exit v3

    .line 952
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :goto_0
    return-void

    .line 951
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeImSessionAvailableCallback(Landroid/os/Handler;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkServiceState;->removeSessionAvailableCallback(Landroid/os/Handler;)V

    .line 504
    return-void
.end method

.method public removeServiceAvailableCallback(Landroid/os/Handler;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkServiceState;->removeServiceAvailableCallback(Landroid/os/Handler;)V

    .line 508
    return-void
.end method

.method public setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "username"

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 760
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 764
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 765
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 767
    move-object v1, v0

    .line 760
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    goto :goto_1

    .line 773
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_1
    return-object v1
.end method

.method public setDefaultRingtoneForAccount(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method setImSessionAvailable(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter "username"
    .parameter "session"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAppHandler:Landroid/os/Handler;

    .line 518
    .local v0, h:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 519
    const-string v1, "talk"

    const-string v2, "null mAppHandler in setImSessionAvailable"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v1, Lcom/google/android/talk/TalkApp$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/talk/TalkApp$3;-><init>(Lcom/google/android/talk/TalkApp;Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setInactiveAccount(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    .line 778
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 779
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 780
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 781
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 782
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 783
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 784
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    .line 780
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    return-void
.end method

.method public shouldHideRemoteJid(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1276
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_ppjid_domains"

    const-string v3, "public.talk.google.com"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    .line 1283
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1284
    if-eqz v2, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 1286
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1288
    const/4 v0, 0x1

    .line 1293
    :cond_1
    return v0

    .line 1285
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
