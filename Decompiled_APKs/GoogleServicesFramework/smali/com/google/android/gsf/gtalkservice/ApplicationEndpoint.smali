.class public Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
.super Lcom/google/android/gsf/gtalkservice/Endpoint;
.source "ApplicationEndpoint.java"


# instance fields
.field private mBindToSessionServers:Z

.field private mPackageName:Ljava/lang/String;

.field private mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;ZLjava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "account"
    .parameter "workerLooper"
    .parameter "bindToSessionServers"
    .parameter "packageName"

    .prologue
    .line 32
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V

    .line 33
    iput-boolean p4, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mBindToSessionServers:Z

    .line 34
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPackageName:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;-><init>(Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 37
    return-void
.end method

.method private setupOnlinePacketListeners()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->setupOnlinePacketListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not setup packet listeners."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->sendSessionServerBindRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sending ss-bind request failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    return-void
.end method

.method protected createAsyncWakelockTag()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_ASYNC_CONN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mAsyncWakelockTag:Ljava/lang/String;

    .line 52
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
    .line 63
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, username:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, authToken:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 68
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 70
    if-nez v0, :cond_0

    .line 71
    const-string v3, "GTalkService/c"

    const-string v7, "doConnectDelegate: null XMPP connection"

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v7, Ljava/io/IOException;

    const-string v8, "not connected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 75
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v4

    .line 81
    .local v4, accountId:J
    const-string v3, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindAccount: username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", account_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p4

    .line 82
    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smack/XMPPConnection;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, serverJid:Ljava/lang/String;
    const-string v3, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind app endpoint successful for "

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

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v6
.end method

.method public doConnectSucceededDelegate()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPacketsForAccount(J)V

    .line 95
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onConnectionClosed(I)V
    .locals 0
    .parameter "connectionId"

    .prologue
    .line 57
    return-void
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->sendIqStanza(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->sendMessageStanza(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mPacketManager:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public sendSessionServerBindRequest()Z
    .locals 3

    .prologue
    .line 118
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->mBindToSessionServers:Z

    if-nez v1, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    .line 122
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/MobileBind;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/MobileBind;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, query:Lcom/google/android/gsf/gtalkservice/extensions/MobileBind;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/MobileBind;->setAccountId(J)V

    .line 124
    const-string v1, "GTalkService/c"

    const-string v2, "request ss-bind"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    goto :goto_0
.end method
