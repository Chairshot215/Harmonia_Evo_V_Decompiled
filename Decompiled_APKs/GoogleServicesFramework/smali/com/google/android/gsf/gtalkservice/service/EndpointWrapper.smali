.class public Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
.super Lcom/google/android/gtalkservice/IGTalkConnection$Stub;
.source "EndpointWrapper.java"


# instance fields
.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

.field private mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 1
    .parameter "connection"
    .parameter "service"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 35
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setSessionWrapper(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V

    .line 36
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 37
    return-void
.end method


# virtual methods
.method public clearConnectionStatistics()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->clearStats()V

    .line 119
    return-void
.end method

.method public createImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    instance-of v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionUptime()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionUptime()I

    move-result v0

    return v0
.end method

.method public getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    instance-of v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, deviceId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 66
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_0
    return-object v1
.end method

.method public getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    return-object v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    instance-of v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityFromServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityToServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfConnectionsAttempted()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsAttempted()I

    move-result v0

    return v0
.end method

.method public getNumberOfConnectionsMade()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsMade()I

    move-result v0

    return v0
.end method

.method public getOriginalUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getOriginalUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    return v0
.end method

.method logout()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 49
    return-void
.end method

.method public sendHeartbeat()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendHeartbeatToServer()V

    .line 128
    return-void
.end method

.method public sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 1
    .parameter "data"
    .parameter "cb"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 123
    return-void
.end method
