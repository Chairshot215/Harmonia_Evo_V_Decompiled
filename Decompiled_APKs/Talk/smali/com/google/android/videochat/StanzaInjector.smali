.class public Lcom/google/android/videochat/StanzaInjector;
.super Ljava/lang/Object;
.source "StanzaInjector.java"


# instance fields
.field private mCallManager:Lcom/google/android/videochat/CallManager;

.field private mService:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/VideoChatService;Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter "service"
    .parameter "callManager"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/videochat/StanzaInjector;->mService:Lcom/google/android/videochat/VideoChatService;

    .line 28
    iput-object p2, p0, Lcom/google/android/videochat/StanzaInjector;->mCallManager:Lcom/google/android/videochat/CallManager;

    .line 29
    return-void
.end method

.method private static findInBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 126
    if-eqz p0, :cond_0

    const-string v0, "voice.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "vclib:StanzaInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findInBlackList: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static injectResponseStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/videochat/VideoChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "com.google.android.videochat.ACTION_INCOMING_STANZA_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "stanza"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "original_stanza"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "output_receiver"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method

.method public static injectStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/videochat/util/IqStanzaParser;

    invoke-direct {v0, p2}, Lcom/google/android/videochat/util/IqStanzaParser;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/videochat/util/IqStanzaParser;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/videochat/StanzaInjector;->findInBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/videochat/VideoChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string v1, "com.google.android.videochat.ACTION_INCOMING_STANZA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "stanza"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "output_receiver"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const-string v1, "local_bare_jid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method injectResponseStanza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "originalStanzaString"
    .parameter "stanzaString"

    .prologue
    .line 96
    const-string v1, "vclib:StanzaInjector"

    const-string v2, "injectResponseStanza"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v1, "vclib:StanzaInjector"

    const-string v2, "Can\'t process incoming response: original stanza not specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/google/android/videochat/util/IqStanzaParser;

    invoke-direct {v0, p2}, Lcom/google/android/videochat/util/IqStanzaParser;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, iqStanza:Lcom/google/android/videochat/util/IqStanzaParser;
    invoke-virtual {v0}, Lcom/google/android/videochat/util/IqStanzaParser;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const-string v1, "vclib:StanzaInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t process incoming response: Not a valid iq stanza: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 110
    const-string v1, "vclib:StanzaInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessageResponseFromIntent, remoteJid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/videochat/util/IqStanzaParser;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    iget-object v1, p0, Lcom/google/android/videochat/StanzaInjector;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/videochat/CallManager;->handleMessageResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/google/android/videochat/StanzaInjector;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v1}, Lcom/google/android/videochat/VideoChatService;->postStopServiceIfSafe()V

    goto :goto_0

    .line 112
    :cond_2
    const-string v1, "vclib:StanzaInjector"

    const-string v2, "handleMessageResponseFromIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method injectStanza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "stanzaString"
    .parameter "localBareJid"

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/videochat/util/IqStanzaParser;

    invoke-direct {v0, p1}, Lcom/google/android/videochat/util/IqStanzaParser;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, iqStanza:Lcom/google/android/videochat/util/IqStanzaParser;
    invoke-virtual {v0}, Lcom/google/android/videochat/util/IqStanzaParser;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    const-string v3, "vclib:StanzaInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t process incoming stanza: Not a valid iq stanza: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/google/android/videochat/util/IqStanzaParser;->mFrom:Ljava/lang/String;

    .line 65
    .local v1, remoteJid:Ljava/lang/String;
    new-instance v2, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;

    invoke-direct {v2, p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, stanza:Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;
    invoke-virtual {v2}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isValidJingleOrGingleStanza()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    const-string v3, "vclib:StanzaInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t process incoming stanza: Not a valid session stanza: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    .line 73
    const-string v3, "vclib:StanzaInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject stanza, remoteJid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    iget-object v3, p0, Lcom/google/android/videochat/StanzaInjector;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v3, v1, p2, v2}, Lcom/google/android/videochat/CallManager;->handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {v2}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isTypeInitiate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/google/android/videochat/StanzaInjector;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v3, v1, p2}, Lcom/google/android/videochat/VideoChatService;->onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isTypeInitiate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/google/android/videochat/StanzaInjector;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v3}, Lcom/google/android/videochat/VideoChatService;->postStopServiceIfSafe()V

    goto :goto_0

    .line 75
    :cond_4
    const-string v3, "vclib:StanzaInjector"

    const-string v4, "inject stanza"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
