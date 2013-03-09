.class public Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
.super Lcom/google/android/gsf/gtalkservice/Endpoint;
.source "GTalkConnection.java"


# static fields
.field private static TALK_RESOURCE_PREFIX:Ljava/lang/String;


# instance fields
.field private mCapabilities:I

.field private mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private volatile mPresence:Lcom/google/android/gtalkservice/Presence;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mShowMobileIndicator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "android_talk"

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->TALK_RESOURCE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V
    .locals 2
    .parameter "service"
    .parameter "account"
    .parameter "workerLooper"

    .prologue
    .line 98
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V

    .line 75
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsObserver:Ljava/util/Observer;

    .line 102
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->init(Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastOnline()V
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, username:Ljava/lang/String;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastOnline for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.google.android.talk.CONN_STATE_ONLINE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.talk.CONN_STATE_ONLINE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, connectedIntent:Landroid/content/Intent;
    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method private clearAllPresenceRecords()V
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    .line 321
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->clearAllPresenceRecords()V

    .line 322
    return-void
.end method

.method private ensurePresenceHandlerLoginState()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v1

    .line 326
    .local v1, rosterHandler:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->isLoggedIn()Z

    move-result v0

    .line 327
    .local v0, isRosterHandlerLoggedIn:Z
    if-nez v0, :cond_0

    .line 328
    const-string v2, "GTalkService"

    const-string v3, "ensurePresenceHandlerLoginState: call RosterListenerImpl.onLoggedIn"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->onLoggedIn()V

    .line 331
    :cond_0
    return-void
.end method

.method private getJidResourceFromSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getJidResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestBatchQuery(Z)Z
    .locals 11
    .parameter "online"

    .prologue
    const/4 v7, 0x0

    .line 334
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;-><init>()V

    .line 336
    .local v2, query:Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;
    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setIsOnline(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setAccountId(J)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    .line 340
    .local v1, isUserIdle:Z
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setDeviceIdle(Z)V

    .line 341
    const-string v8, "GTalkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestBatchQuery: online="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    invoke-virtual {p0, v2, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v7

    .line 406
    :goto_0
    return v7

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setupOnlinePacketListeners()Z

    move-result v8

    if-nez v8, :cond_1

    .line 350
    const-string v8, "GTalkService"

    const-string v9, "requestBatchQuery: setupOnlinePacketListeners failed, bail"

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v3

    .line 355
    .local v3, rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getShowMobileIndicator()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setShowMobileIndicator(Z)V

    .line 356
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->getRosterEtag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setRosterEtag(Ljava/lang/String;)V

    .line 357
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->getOtrEtag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setOtrEtag(Ljava/lang/String;)V

    .line 358
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setSharedStatusVersion(I)V

    .line 359
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setVCardQUeryStanzaId(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setCapabilities(I)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    move-result-object v6

    .line 363
    .local v6, vcardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, username:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, avatarHash:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setAvatarHash(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v6, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->addToNotificationMap(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v8

    new-instance v9, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;

    invoke-direct {v9, p0, v5, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)V

    invoke-virtual {v8, v2, v9}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    move-result v4

    .line 398
    .local v4, sent:Z
    if-nez v4, :cond_2

    .line 399
    const-string v8, "GTalkService"

    const-string v9, "requestBatchQuery: FAILED TO SEND BATCH QUERY!!!"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    const-string v7, "GTalkService/c"

    const-string v8, "requestBatchQuery: setConnectionState(ONLINE)"

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionState(I)Z

    .line 406
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private requestRosterAndSendInitialPresence()V
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setupOnlinePacketListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "GTalkService"

    const-string v1, "requestRosterAndSendInitialPresence: setupOnlinePacketListeners failed, bail"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->requestRoster()Z

    .line 432
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestSharedPresence()V

    .line 435
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendInitialPresence()V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->loadVCard()V

    .line 441
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->queryStatus()V

    .line 443
    const-string v0, "GTalkService/c"

    const-string v1, "requestRosterAndSendInitialPresence: setConnectionState(ONLINE)"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionState(I)Z

    goto :goto_0
.end method

.method private requestSharedPresence()V
    .locals 3

    .prologue
    .line 498
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 499
    .local v0, query:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setTo(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setAccountId(J)V

    .line 502
    const-string v1, "GTalkService"

    const-string v2, "request shared presence status"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 504
    return-void
.end method

.method private saveJidResourceToSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "jidResource"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setJidResource(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private sendInitialPresence()V
    .locals 5

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    .line 475
    .local v0, imSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 476
    .local v1, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    .line 478
    .local v2, isAvailable:Z
    new-instance v3, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v3}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    .line 479
    .local v3, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v3, v2}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 486
    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 493
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 494
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 495
    return-void

    .line 490
    :cond_1
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    goto :goto_0
.end method

.method private sendInitialPresenceForGoogleTalk()Z
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 304
    .local v0, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->ensurePresenceHandlerLoginState()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->clearAllPresenceRecords()V

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->goOnline()Z

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->usePostAuthBatchQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestBatchQuery(Z)Z

    move-result v1

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendInitialPresence()V

    .line 316
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setupOnlinePacketListeners()Z
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const/4 v1, 0x0

    .line 465
    :goto_0
    return v1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 456
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 457
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 458
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 459
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 460
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 461
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 465
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private usePostAuthBatchQuery()Z
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_use_batch_query"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asyncGoOnlineForGoogleTalk()V
    .locals 7

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v1

    new-instance v2, Lcom/google/android/gtalkservice/Presence;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 275
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public asyncUpdateAccountStatus()V
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendInitialPresenceForGoogleTalk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sending roster request failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method

.method protected createAsyncWakelockTag()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_ASYNC_CONN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAsyncWakelockTag:Ljava/lang/String;

    .line 169
    return-void
.end method

.method protected doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "host"
    .parameter "port"
    .parameter "domain"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, username:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, authToken:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 512
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 514
    if-nez v0, :cond_0

    .line 515
    const-string v3, "GTalkService/c"

    const-string v7, "doConnectDelegate: null XMPP connection"

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v7, Ljava/io/IOException;

    const-string v8, "not connected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 519
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v4

    .line 525
    .local v4, accountId:J
    const-string v3, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindAccount: username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5, v1}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", account_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p4

    .line 528
    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smack/XMPPConnection;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, serverJid:Ljava/lang/String;
    const-string v3, "GTalkService/c"

    const-string v7, "bind successful"

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v3, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind successful for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", serverJid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-object v6
.end method

.method protected doLogout()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doLogout()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->onLoggedOut()V

    .line 204
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 587
    const-string v2, "Type: GTalkConnection"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    .line 591
    .local v0, imSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    if-eqz v0, :cond_1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Presence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intended presence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getSharedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 596
    .local v1, p:Lcom/google/android/gtalkservice/Presence;
    if-eqz v1, :cond_0

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save shared presence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    .end local v1           #p:Lcom/google/android/gtalkservice/Presence;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->dumpConnectionHistory(Ljava/io/PrintWriter;)V

    .line 606
    return-void

    .line 600
    :cond_1
    const-string v2, "no ImSession found"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method public getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->getSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->TALK_RESOURCE_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method public getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method public getShowMobileIndicator()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z

    return v0
.end method

.method public goOnline()Z
    .locals 2

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->usePostAuthBatchQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestBatchQuery(Z)Z

    move-result v0

    .line 292
    .local v0, retVal:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->broadcastOnline()V

    .line 297
    :cond_0
    return v0

    .line 289
    .end local v0           #retVal:Z
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestRosterAndSendInitialPresence()V

    .line 290
    const/4 v0, 0x1

    .restart local v0       #retVal:Z
    goto :goto_0
.end method

.method protected init(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 7
    .parameter "account"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 117
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z

    .line 118
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v3

    iput v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I

    .line 120
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->isAccountLastOnline(Landroid/content/ContentResolver;J)Z

    move-result v0

    .line 122
    .local v0, available:Z
    new-instance v3, Lcom/google/android/gtalkservice/Presence;

    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 127
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: initialized presence to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->ensurePresenceHandlerLoginState()V

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->createImSession(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v2

    .line 134
    .local v2, session:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;)V

    .line 135
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    monitor-enter p0

    .line 136
    :try_start_0
    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->addObserver(Ljava/util/Observer;)V

    .line 140
    return-void

    .line 137
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected initJidResource()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJidResourceFromSettings()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, jidResource:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->computeJIDResource()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setJidResource(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->addAccountIfNotExist(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mAccountId:J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, ex:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "addAccountIfNotExist caught "

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->logout()V

    .line 179
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 180
    return-void
.end method

.method protected notifyConnectionListeners()V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->notifyConnectionListeners()V

    .line 584
    return-void
.end method

.method public onConnectionClosed(I)V
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setRosterFetched(Z)V

    .line 237
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->rejoinRoomsForGroupChats()V

    .line 238
    return-void
.end method

.method public requestToRefreshAuthToken()V
    .locals 3

    .prologue
    .line 539
    const-string v1, "GTalkService"

    const-string v2, "requestToRefreshAuthToken: send EVENT_REFRESH_AUTH_TOKEN msg"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 541
    .local v0, message:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 543
    return-void
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendIqStanza(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendMessageStanza(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method protected setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 226
    :cond_0
    return-void
.end method

.method protected setConnectionState(IZ)Z
    .locals 1
    .parameter "state"
    .parameter "notify"

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(IZ)Z

    move-result v0

    .line 574
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->asyncUpdateAccountStatus()V

    .line 578
    :cond_0
    return v0
.end method

.method protected setJidResource(Ljava/lang/String;)V
    .locals 0
    .parameter "jidResource"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->saveJidResourceToSettings(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 0
    .parameter "presence"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 259
    return-void
.end method

.method public updateAccountStatus()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->updateAccountStatus()V

    .line 218
    return-void
.end method
