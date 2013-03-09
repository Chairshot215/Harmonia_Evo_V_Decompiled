.class public abstract Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
.super Ljava/lang/Object;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$2;
    }
.end annotation


# instance fields
.field private mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

.field private mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

.field private mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

.field private mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

.field protected mSharedPresence:Lcom/google/android/gtalkservice/Presence;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V
    .locals 1
    .parameter "connectionContext"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 61
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 91
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    return-void
.end method

.method private addPresenceExtensions(Lorg/jivesoftware/smack/packet/Presence;Lcom/google/android/gtalkservice/Presence;)V
    .locals 6
    .parameter "presence"
    .parameter "inPresence"

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getShowMobileIndicator()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    const-string v2, "http://www.android.com/gtalk/client/caps"

    .line 473
    .local v2, node:Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/jivesoftware/smack/packet/PresenceCapability;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/packet/PresenceCapability;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, cap:Lorg/jivesoftware/smack/packet/PresenceCapability;
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v1

    .line 475
    .local v1, caps:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    .local v3, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "pmuc-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 481
    const-string v4, "voice-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 484
    const-string v4, "video-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    .line 487
    const-string v4, "camera-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/PresenceCapability;->setExtension(Ljava/lang/String;)V

    .line 492
    const-string v4, "1.1"

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/PresenceCapability;->setVersion(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 494
    return-void

    .line 470
    .end local v0           #cap:Lorg/jivesoftware/smack/packet/PresenceCapability;
    .end local v1           #caps:I
    .end local v2           #node:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_4
    const-string v2, "http://www.android.com/gtalk/client/caps2"

    .restart local v2       #node:Ljava/lang/String;
    goto :goto_0
.end method

.method private createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "chatSession"

    .prologue
    .line 610
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    return-object v0
.end method

.method public static createImSession(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    .locals 1
    .parameter "connectionContext"

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 705
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 203
    .local v1, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    .line 205
    .local v2, error:Lcom/google/android/gtalkservice/ConnectionError;
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionListener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", error="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 209
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gtalkservice/IConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v6

    .line 214
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListener caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static sendPresence(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "connection"
    .parameter "presence"

    .prologue
    .line 406
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 409
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPresence caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private translateGTalkPresence(Lcom/google/android/gtalkservice/Presence;)I
    .locals 4
    .parameter "p"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 322
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 333
    const/4 v0, 0x5

    .local v0, availability:I
    goto :goto_0

    .line 324
    .end local v0           #availability:I
    :pswitch_0
    const/4 v0, 0x4

    .line 325
    .restart local v0       #availability:I
    goto :goto_0

    .line 329
    .end local v0           #availability:I
    :pswitch_1
    const/4 v0, 0x2

    .line 330
    .restart local v0       #availability:I
    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    .line 174
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 175
    monitor-exit v3

    .line 183
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    goto :goto_0

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 565
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 566
    return-void
.end method

.method public addRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 689
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->addRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 690
    return-void
.end method

.method public addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 574
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    .line 575
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 576
    return-void
.end method

.method public addRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 669
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 671
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->addRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 672
    return-void
.end method

.method public approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    move-result-object v0

    .line 555
    .local v0, sMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->acceptRequestForUser(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public abstract blockContact(Ljava/lang/String;)V
.end method

.method public abstract clearContactFlags(Ljava/lang/String;)V
.end method

.method public abstract closeAllChatSessions()V
.end method

.method public createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 8
    .parameter "to"

    .prologue
    const/4 v5, 0x1

    .line 600
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 601
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v3

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v7

    .line 606
    .local v7, session:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v1

    return-object v1
.end method

.method public abstract createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public declineSubscriptionRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    move-result-object v0

    .line 560
    .local v0, sMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->declineRequestForUser(JLjava/lang/String;)V

    .line 561
    return-void
.end method

.method public abstract editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract getAccountId()J
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 3
    .parameter "to"

    .prologue
    .line 614
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 615
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v1

    .line 617
    .local v1, session:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-nez v1, :cond_0

    .line 618
    const/4 v2, 0x0

    .line 621
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    goto :goto_0
.end method

.method public getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    return-object v0
.end method

.method protected getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method public getIntendedPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 360
    .local v0, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    sget-object v1, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 364
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharedPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mSharedPresence:Lcom/google/android/gtalkservice/Presence;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goOffRecordInRoom(Ljava/lang/String;Z)V
    .locals 2
    .parameter "room"
    .parameter "offRecordFlag"

    .prologue
    .line 589
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    move-result-object v0

    .line 590
    .local v0, otrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 591
    return-void
.end method

.method public goOffRecordWithContact(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "offRecordFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    move-result-object v0

    .line 585
    .local v0, otrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->goOffRecordWithContact(Ljava/util/ArrayList;Z)V

    .line 586
    return-void
.end method

.method public abstract hideContact(Ljava/lang/String;)V
.end method

.method public abstract initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end method

.method public abstract inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 129
    .local v0, presence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOffRecordWithContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "contact"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->isOffTheRecordWithContact(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public loadVCard()V
    .locals 5

    .prologue
    .line 528
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "load user\'s vCard from server"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, username:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    move-result-object v2

    .line 534
    .local v2, vcardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, storedHash:Ljava/lang/String;
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->loadAvatarForUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->addToNotificationMap(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public abstract login(Ljava/lang/String;Z)V
.end method

.method public abstract logout()V
.end method

.method protected notifyConnectionListeners()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 198
    return-void
.end method

.method protected onLoggedOut()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onLoggedOut"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->onLogout(J)V

    .line 124
    return-void
.end method

.method public abstract pinContact(Ljava/lang/String;)V
.end method

.method public abstract pruneOldChatSessions(JJJZ)V
.end method

.method public queryJingleInfo()V
    .locals 2

    .prologue
    .line 681
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 683
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->queryJingleInfo()V

    .line 684
    return-void
.end method

.method public removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 186
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    .line 188
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 189
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v3

    .line 194
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :goto_0
    return-void

    .line 193
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public abstract removeContact(Ljava/lang/String;)V
.end method

.method public abstract removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 569
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 570
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 571
    return-void
.end method

.method public removeRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 693
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 695
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->removeRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 696
    return-void
.end method

.method public removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    .line 580
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 581
    return-void
.end method

.method public removeRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 677
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->removeRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 678
    return-void
.end method

.method public requestBatchedBuddyPresence()V
    .locals 6

    .prologue
    .line 644
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    .line 645
    .local v1, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 646
    :cond_0
    const-string v3, "requestBatchedBuddyPresence: not connected to server, bail"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 650
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    sget-object v3, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;-><init>(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V

    .line 651
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/packet/BatchPresence;->setAccountId(J)V

    .line 652
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;->setTo(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->onSentBatchPresenceRequest()V

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v2

    .line 658
    .local v2, ex:Ljava/lang/IllegalStateException;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPresence caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendCallPerfStatsStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "callPerfStatsStanza"

    .prologue
    .line 699
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 701
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->sendCallPerfStatsStanza(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public sendPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 347
    .local v0, p:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendPresence(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 348
    return-void
.end method

.method public sendPresenceCapability()V
    .locals 4

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 505
    .local v0, currentPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 510
    .local v1, p:Lorg/jivesoftware/smack/packet/Packet;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPresenceCapability: p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendPresence(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 513
    .end local v1           #p:Lorg/jivesoftware/smack/packet/Packet;
    :cond_0
    return-void
.end method

.method public sendSessionStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "stanza"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    move-result-object v0

    .line 665
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->sendSessionStanza(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public setAndSendPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifySelfPresenceChanged()Z

    .line 231
    return-void
.end method

.method protected setLastLoginState(Z)V
    .locals 8
    .parameter "isLoggedIn"

    .prologue
    const/4 v7, 0x0

    .line 142
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v3, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 144
    .local v2, lastLoggedInVal:I
    :goto_0
    const-string v4, "last_login_state"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 146
    .local v0, accountUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, count:I
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastLoginState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for acct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void

    .line 143
    .end local v0           #accountUri:Landroid/net/Uri;
    .end local v1           #count:I
    .end local v2           #lastLoggedInVal:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPresence(Lcom/google/android/gtalkservice/Presence;)Z
    .locals 6
    .parameter "presence"

    .prologue
    .line 239
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v3, :cond_2

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPresence for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->printDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 247
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 254
    .local v1, oldPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {p1, v1}, Lcom/google/android/gtalkservice/Presence;->equals(Lcom/google/android/gtalkservice/Presence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 256
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->asyncUpdateAccountStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v2, 0x1

    .line 262
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    return v2

    .line 241
    .end local v1           #oldPresence:Lcom/google/android/gtalkservice/Presence;
    .end local v2           #retVal:Z
    :cond_2
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPresence(acct="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .restart local v2       #retVal:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public setSharedPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 383
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/Presence;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mSharedPresence:Lcom/google/android/gtalkservice/Presence;

    .line 384
    return-void
.end method

.method protected abstract translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
.end method

.method protected translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 7
    .parameter "inPresence"

    .prologue
    .line 417
    const/16 v2, 0x18

    .line 420
    .local v2, priority:I
    if-nez p1, :cond_0

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, isAvailable:Z
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    .line 423
    .local v4, show:Lcom/google/android/gtalkservice/Presence$Show;
    const/4 v0, 0x0

    .line 430
    .local v0, customStatus:Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v1, :cond_1

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    :goto_1
    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 433
    .local v3, retVal:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 436
    sget-object v5, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 457
    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addPresenceExtensions(Lorg/jivesoftware/smack/packet/Presence;Lcom/google/android/gtalkservice/Presence;)V

    .line 460
    return-object v3

    .line 425
    .end local v0           #customStatus:Ljava/lang/String;
    .end local v1           #isAvailable:Z
    .end local v3           #retVal:Lorg/jivesoftware/smack/packet/Presence;
    .end local v4           #show:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    .line 426
    .restart local v1       #isAvailable:Z
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v4

    .line 427
    .restart local v4       #show:Lcom/google/android/gtalkservice/Presence$Show;
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #customStatus:Ljava/lang/String;
    goto :goto_0

    .line 430
    :cond_1
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_1

    .line 438
    .restart local v3       #retVal:Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_0
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 442
    :pswitch_1
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 446
    :pswitch_2
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 450
    :pswitch_3
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateAccountStatus()V
    .locals 13

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v10

    .line 270
    .local v10, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v9

    .line 272
    .local v9, presence:Lcom/google/android/gtalkservice/Presence;
    const/4 v4, 0x0

    .line 273
    .local v4, presenceMode:I
    const/4 v7, 0x0

    .line 278
    .local v7, connStatus:I
    invoke-virtual {v10}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 279
    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->translateGTalkPresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v4

    .line 280
    const/4 v7, 0x3

    .line 283
    :cond_0
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v8

    .line 285
    .local v8, hostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v1

    .line 286
    .local v1, accountId:J
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v6

    .line 290
    .local v6, capabilities:I
    invoke-static {v0, v1, v2, v4, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setAccountStatus(Landroid/content/ContentResolver;JII)V

    .line 293
    const-string v11, "GTalkService"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 294
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAccountStatus: update contact presence for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", account="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", presence="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", connStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state.isOnline()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->log(Ljava/lang/String;)V

    .line 302
    :cond_1
    if-nez v4, :cond_2

    .line 303
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->removeContactPresenceFor(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->updateContactPresence(Landroid/content/ContentResolver;JLjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public uploadAvatar(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "avatar"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 517
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->uploadAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public uploadAvatarFromDb()V
    .locals 4

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 523
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->uploadAvatarFromDb(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method
