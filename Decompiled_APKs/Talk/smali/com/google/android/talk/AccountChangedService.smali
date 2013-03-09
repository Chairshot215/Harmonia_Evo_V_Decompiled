.class public Lcom/google/android/talk/AccountChangedService;
.super Landroid/app/Service;
.source "AccountChangedService.java"

# interfaces
.implements Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;
.implements Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountChangedService$1;,
        Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;
    }
.end annotation


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mConnectionListener:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

.field private mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStartId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountChangedService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/AccountChangedService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/talk/AccountChangedService;->stillLoggingIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/AccountChangedService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/talk/AccountChangedService;->unregisterAllSessions()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 167
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private stillLoggingIn()Z
    .locals 4

    .prologue
    .line 147
    iget-object v3, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 148
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 149
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->autoLoggingIn:Z

    if-eqz v3, :cond_0

    .line 150
    const/4 v3, 0x1

    .line 153
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private unregisterAllSessions()V
    .locals 5

    .prologue
    .line 157
    iget-object v3, p0, Lcom/google/android/talk/AccountChangedService;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IImSession;

    .line 159
    .local v2, imSession:Lcom/google/android/gtalkservice/IImSession;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/AccountChangedService;->mConnectionListener:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "talk"

    const-string v4, "unregisterAllSessions caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_0
    return-void
.end method


# virtual methods
.method public connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter "username"
    .parameter "imSession"

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/AccountChangedService;->mConnectionListener:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    invoke-interface {p2, v1}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 173
    iget-object v1, p0, Lcom/google/android/talk/AccountChangedService;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/android/talk/AccountChangedService;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "connectionCreated caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAccountIdUpdated(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 4
    .parameter "accountInfo"

    .prologue
    .line 108
    iget-wide v0, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    iget-wide v1, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneForAccount(J)V

    .line 111
    :cond_0
    return-void
.end method

.method public onAccountListChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 58
    const-string v5, "onAccountListChanged"

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/talk/AccountChangedService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gtalk_auto_login_new_accounts"

    invoke-static {v5, v6, v9}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    const-string v5, "Auto login disabled from gservices"

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v3, 0x1

    .line 70
    .local v3, shouldStopServiceNow:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 71
    iget-object v5, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v4

    .line 72
    .local v4, talkService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 76
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not a new account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already signed in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trying to sign in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    .line 86
    iget-object v5, p0, Lcom/google/android/talk/AccountChangedService;->mConnectionListener:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    if-nez v5, :cond_4

    .line 87
    new-instance v5, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;-><init>(Lcom/google/android/talk/AccountChangedService;Lcom/google/android/talk/AccountChangedService$1;)V

    iput-object v5, p0, Lcom/google/android/talk/AccountChangedService;->mConnectionListener:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/talk/AccountChangedService;->mSessions:Ljava/util/ArrayList;

    .line 93
    :cond_4
    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/android/talk/ConnectionStateOnlineReceiver;->markAccountForSignInNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v5, v4, p0}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z

    .line 97
    iput-boolean v9, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->autoLoggingIn:Z

    goto/16 :goto_1

    .line 100
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #talkService:Lcom/google/android/gtalkservice/IGTalkService;
    :cond_5
    if-eqz v3, :cond_0

    .line 101
    const-string v5, "no new accounts, so stopping service"

    invoke-direct {p0, v5}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    .line 102
    iget v5, p0, Lcom/google/android/talk/AccountChangedService;->mStartId:I

    invoke-virtual {p0, v5}, Lcom/google/android/talk/AccountChangedService;->stopSelf(I)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 39
    const-string v0, "AccountChangedService"

    invoke-direct {p0, v0}, Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V

    .line 41
    iput p3, p0, Lcom/google/android/talk/AccountChangedService;->mStartId:I

    .line 42
    invoke-virtual {p0}, Lcom/google/android/talk/AccountChangedService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp;

    iput-object v0, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    .line 43
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->loadAccounts()V

    .line 44
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 46
    const/4 v0, 0x2

    return v0
.end method
