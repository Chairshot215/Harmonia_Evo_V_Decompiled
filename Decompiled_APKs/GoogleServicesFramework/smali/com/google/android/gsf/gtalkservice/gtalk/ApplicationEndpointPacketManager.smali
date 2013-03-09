.class public Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;
.super Ljava/lang/Object;
.source "ApplicationEndpointPacketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;
    }
.end annotation


# instance fields
.field private mApplicationEdnpointFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mApplicationEndpointListener:Lorg/jivesoftware/smack/PacketListener;

.field private final mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;)V
    .locals 0
    .parameter "end"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 103
    if-nez p5, :cond_0

    .line 104
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V

    .line 114
    .local v0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 118
    const-string v1, "set"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 131
    .end local v0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_1
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;-><init>()V

    .restart local v0       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v1, v0

    .line 111
    check-cast v1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-virtual {v1, p5}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setExtension(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "get"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 122
    :cond_2
    const-string v1, "result"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 124
    :cond_3
    const-string v1, "error"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 127
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIqStanza: invalid IQ type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;
    .locals 2
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 163
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 165
    .local v1, stanza:Lorg/jivesoftware/smack/packet/Message;
    if-eqz p5, :cond_0

    .line 166
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 167
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p5}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 171
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 175
    return-object v1
.end method

.method private createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 5
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, presenceType:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const-string v3, "AVAILABLE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 233
    :cond_0
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 235
    .local v2, stanza:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz p5, :cond_1

    .line 236
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 237
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p5}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 241
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_1
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 245
    .end local v2           #stanza:Lorg/jivesoftware/smack/packet/Presence;
    :goto_1
    return-object v2

    .line 217
    :cond_2
    const-string v3, "UNAVAILABLE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 219
    :cond_3
    const-string v3, "SUBSCRIBE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 221
    :cond_4
    const-string v3, "UNSUBSCRIBE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 222
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 223
    :cond_5
    const-string v3, "PROBE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 225
    :cond_6
    const-string v3, "ERROR"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 226
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 229
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPresenceStanza: unsupported type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getAppPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 56
    const-string v3, "app"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 59
    .local v2, parcelable:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 60
    check-cast v0, Landroid/app/PendingIntent;

    .line 61
    .local v0, appPI:Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 66
    .end local v0           #appPI:Landroid/app/PendingIntent;
    .local v1, appPackage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 63
    .end local v1           #appPackage:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #appPackage:Ljava/lang/String;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 282
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AppEndPktMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public static processXmppEndpointActionFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sendXmppIntent"
    .parameter "error"

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, appPackage:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const-string v3, "GTalkService"

    const-string v4, "[AppEndPktMgr] processXmppEndpointActionFailed: package not found in the intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.SEND_XMPP_FAILED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "error"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "intent"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.XMPP_ENDPOINT_RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, permission:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppEndPktMgr] processXmppEndpointActionFailed: sending intent broadcast with category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mApplicationEndpointListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mApplicationEndpointListener:Lorg/jivesoftware/smack/PacketListener;

    .line 48
    new-instance v0, Lorg/jivesoftware/smack/filter/AccountIdFilter;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/AccountIdFilter;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mApplicationEdnpointFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mApplicationEndpointListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mApplicationEdnpointFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 53
    return-void
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 138
    const-string v0, "attr:id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, packetId:Ljava/lang/String;
    const-string v0, "attr:from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, from:Ljava/lang/String;
    const-string v0, "attr:to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, to:Ljava/lang/String;
    const-string v0, "attr:type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, type:Ljava/lang/String;
    const-string v0, "extension"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, extension:Ljava/lang/String;
    const-string v0, "use_rmq"

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .local v8, useRmq:Z
    move-object v0, p0

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    .line 146
    .local v6, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v7

    .line 148
    .local v7, result:Z
    if-nez v7, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    const-string v9, "no_connection"

    invoke-static {v0, p1, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->processXmppEndpointActionFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 184
    const-string v0, "attr:id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, packetId:Ljava/lang/String;
    const-string v0, "attr:from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, from:Ljava/lang/String;
    const-string v0, "attr:to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, to:Ljava/lang/String;
    const-string v0, "attr:type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, type:Ljava/lang/String;
    const-string v0, "extension"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, extension:Ljava/lang/String;
    const-string v0, "use_rmq"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .local v7, useRmq:Z
    move-object v0, p0

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v6

    .line 193
    .local v6, stanza:Lorg/jivesoftware/smack/packet/Message;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    const-string v8, "no_connection"

    invoke-static {v0, p1, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->processXmppEndpointActionFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 254
    const-string v0, "attr:to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, to:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 258
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPresenceStanza: presence must have a \'to\' field that\'s not the same as the user\'s own username, intent\'s to="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    const-string v8, "unsupported_presence"

    invoke-static {v0, p1, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->processXmppEndpointActionFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 279
    :cond_2
    :goto_0
    return-void

    .line 266
    :cond_3
    const-string v0, "attr:id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, packetId:Ljava/lang/String;
    const-string v0, "attr:from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, from:Ljava/lang/String;
    const-string v0, "attr:type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, type:Ljava/lang/String;
    const-string v0, "extension"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, extension:Ljava/lang/String;
    const-string v0, "use_rmq"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .local v7, useRmq:Z
    move-object v0, p0

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v6

    .line 275
    .local v6, stanza:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    const-string v8, "no_connection"

    invoke-static {v0, p1, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->processXmppEndpointActionFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
