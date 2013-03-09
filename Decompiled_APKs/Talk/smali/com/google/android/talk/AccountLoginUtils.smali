.class public Lcom/google/android/talk/AccountLoginUtils;
.super Ljava/lang/Object;
.source "AccountLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;,
        Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;,
        Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/android/talk/AccountLoginUtils;->signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/talk/AccountLoginUtils;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static asyncCreateConnectionForAccount(Lcom/google/android/gtalkservice/IGTalkService;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    .locals 3
    .parameter "service"
    .parameter "username"
    .parameter "connectionCreatedListener"

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncCreateConnectionForAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountLoginUtils;->logd(Ljava/lang/String;)V

    .line 177
    :try_start_0
    new-instance v1, Lcom/google/android/talk/AccountLoginUtils$1;

    invoke-direct {v1, p1, p2}, Lcom/google/android/talk/AccountLoginUtils$1;-><init>(Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V

    invoke-interface {p0, p1, v1}, Lcom/google/android/gtalkservice/IGTalkService;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "asyncCreateConnectionForAccount caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static clearActiveAccountPrefs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    const-string v1, "gtalk_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z
    .locals 7
    .parameter "username"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 103
    :cond_1
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gtalkservice/IGTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 105
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 107
    .local v2, imSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    .line 108
    .local v3, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 110
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    .end local v2           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v3           #state:Lcom/google/android/gtalkservice/ConnectionState;
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### isSignedIn caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/talk/AccountLoginUtils;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AccountLoginUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 64
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AccountLoginUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V
    .locals 5
    .parameter "account"
    .parameter "activity"

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 70
    .local v1, talkApp:Lcom/google/android/talk/TalkApp;
    iget-object v2, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 73
    const-string v2, "gtalk_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v2, "username"

    iget-object v3, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method public static setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    .locals 2
    .parameter "account"
    .parameter "app"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/talk/TalkApp;->setInactiveAccount(J)V

    .line 86
    invoke-static {p1}, Lcom/google/android/talk/AccountLoginUtils;->clearActiveAccountPrefs(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public static showDialogIfLowStorage(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z
    .locals 6
    .parameter "app"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 148
    .local v2, talkService:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkService;->getDeviceStorageLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v3

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "checkForLowStorage caught "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;

    invoke-direct {v0}, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;-><init>()V

    .line 156
    .local v0, dialog:Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "LowStorageDialog"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static showDialogIfNoDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z
    .locals 3
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->isBackgroundDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    .line 139
    :cond_0
    new-instance v0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-direct {v0}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;-><init>()V

    .line 140
    .local v0, dialog:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoBackgroundDataDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z
    .locals 4
    .parameter "username"
    .parameter "service"
    .parameter "connectionCreatedListener"

    .prologue
    .line 120
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gtalkservice/IGTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 122
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-nez v0, :cond_0

    .line 123
    invoke-static {p1, p0, p2}, Lcom/google/android/talk/AccountLoginUtils;->asyncCreateConnectionForAccount(Lcom/google/android/gtalkservice/IGTalkService;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V

    .line 124
    const/4 v2, 0x1

    .line 131
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :goto_0
    return v2

    .line 127
    .restart local v0       #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :cond_0
    invoke-static {v0, p0, p2}, Lcom/google/android/talk/AccountLoginUtils;->signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### signin caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/AccountLoginUtils;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    .locals 4
    .parameter "connection"
    .parameter "username"
    .parameter "connectionCreatedListener"

    .prologue
    .line 196
    const-string v2, "signInForConnection"

    invoke-static {v2}, Lcom/google/android/talk/AccountLoginUtils;->logd(Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 200
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-interface {p2, p1, v1}, Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;->connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInForConnection: login for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/AccountLoginUtils;->logd(Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInForConnection: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/AccountLoginUtils;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
