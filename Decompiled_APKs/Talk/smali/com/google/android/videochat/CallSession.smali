.class public Lcom/google/android/videochat/CallSession;
.super Ljava/lang/Object;
.source "CallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CallSession$AudioDevice;
    }
.end annotation


# instance fields
.field private mCallManager:Lcom/google/android/videochat/CallManager;

.field private mService:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/VideoChatService;Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter "service"
    .parameter "cm"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    .line 31
    iput-object p1, p0, Lcom/google/android/videochat/CallSession;->mService:Lcom/google/android/videochat/VideoChatService;

    .line 32
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 190
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 160
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 161
    const-string v0, "vclib:CallSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewCallStarting: remoteJid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 163
    :cond_0
    const-string v0, "vclib:CallSession"

    const-string v1, "onNewCallStarting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acceptIncomingCall(Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z
    .locals 1
    .parameter "remoteJid"
    .parameter "factory"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p2}, Lcom/google/android/videochat/VideoChatService;->setOngoingNotificationFactory(Lcom/google/android/videochat/OngoingNotificationFactory;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->acceptCall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V
    .locals 2
    .parameter "ssrc"
    .parameter "renderer"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindRenderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallSession;->logd(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/videochat/CallManager;->bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V

    .line 143
    return-void
.end method

.method public declineIncomingCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->declineCall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCallStorage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->getCallStorage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initiateVideoCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z
    .locals 2
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "factory"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p3}, Lcom/google/android/videochat/VideoChatService;->setOngoingNotificationFactory(Lcom/google/android/videochat/OngoingNotificationFactory;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/videochat/CallManager;->initiateCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/CallManager$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CallSession;->onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initiateVoiceCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z
    .locals 2
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "factory"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p3}, Lcom/google/android/videochat/VideoChatService;->setOngoingNotificationFactory(Lcom/google/android/videochat/OngoingNotificationFactory;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/videochat/CallManager$Mode;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/videochat/CallManager;->initiateCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/CallManager$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CallSession;->onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 130
    return-void
.end method

.method public setCallStorage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/videochat/CallManager;->setCallStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallManager;->setMute(Z)V

    .line 134
    return-void
.end method

.method public terminateCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallManager;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/videochat/util/Util;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "vclib:CallSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateChat: mismatch with call remote address, remoteJid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  in-call jid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallManager;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallSession;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallManager;->terminateCall()Z

    move-result v0

    goto :goto_0
.end method
