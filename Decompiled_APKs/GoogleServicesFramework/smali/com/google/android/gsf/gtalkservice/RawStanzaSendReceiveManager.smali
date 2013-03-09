.class public Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;
    }
.end annotation


# instance fields
.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

.field private mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

.field private mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->onIqStanzaReceived(Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->onStanzaReceived(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V

    return-void
.end method

.method private static createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 129
    if-nez p4, :cond_0

    .line 130
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$3;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$3;-><init>()V

    .line 140
    .local v0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 144
    const-string v1, "set"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 157
    .end local v0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_1
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;-><init>()V

    .restart local v0       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v1, v0

    .line 137
    check-cast v1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-virtual {v1, p4}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setExtension(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    const-string v1, "get"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 148
    :cond_2
    const-string v1, "result"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 150
    :cond_3
    const-string v1, "error"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 153
    :cond_4
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIqStanza: invalid IQ type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;
    .locals 5
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 214
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 216
    .local v1, stanza:Lorg/jivesoftware/smack/packet/Message;
    if-eqz p4, :cond_0

    .line 217
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 218
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p4}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 222
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_0
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 226
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    const-string v2, "HEADLINE"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 238
    :cond_1
    :goto_0
    return-object v1

    .line 229
    :cond_2
    const-string v2, "ERROR"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    goto :goto_0

    .line 233
    :cond_3
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMessageStanza: unsupported type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 6
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, presenceType:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    const-string v3, "AVAILABLE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 302
    :cond_0
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 304
    .local v2, stanza:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz p4, :cond_1

    .line 305
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 306
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p4}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 310
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_1
    invoke-virtual {v2, p0}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 314
    .end local v2           #stanza:Lorg/jivesoftware/smack/packet/Presence;
    :goto_1
    return-object v2

    .line 286
    :cond_2
    const-string v3, "UNAVAILABLE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 288
    :cond_3
    const-string v3, "SUBSCRIBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 290
    :cond_4
    const-string v3, "UNSUBSCRIBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 292
    :cond_5
    const-string v3, "PROBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 294
    :cond_6
    const-string v3, "ERROR"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 298
    :cond_7
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPresenceStanza: unsupported type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getAppPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 515
    const-string v3, "app"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 518
    .local v2, parcelable:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 519
    check-cast v0, Landroid/app/PendingIntent;

    .line 520
    .local v0, appPI:Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 525
    .end local v0           #appPI:Landroid/app/PendingIntent;
    .local v1, appPackage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 522
    .end local v1           #appPackage:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #appPackage:Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 529
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RawStanzaSendReceiveMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method private onIqStanzaReceived(Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V
    .locals 6
    .parameter "iqStanza"

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, elementName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, namespace:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->toXML()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, rawXml:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIqStanzaReceived: element="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", ns="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 365
    const-string v5, "iq"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private onStanzaReceived(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    .line 375
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v7

    .line 378
    .local v7, extensions:Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 380
    .local v6, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    instance-of v0, v6, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    if-eqz v0, :cond_0

    move-object v8, v6

    .line 381
    check-cast v8, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    .line 382
    .local v8, rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, elementName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, namespace:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->toXML()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, rawXml:Ljava/lang/String;
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_1

    .line 388
    const-string v5, "message"

    .line 393
    .local v5, type:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStanzaReceived: element="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", ns="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", type="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    move-object v0, p0

    .line 395
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v2           #elementName:Ljava/lang/String;
    .end local v3           #namespace:Ljava/lang/String;
    .end local v4           #rawXml:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v8           #rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_0
    return-void

    .line 390
    .restart local v2       #elementName:Ljava/lang/String;
    .restart local v3       #namespace:Ljava/lang/String;
    .restart local v4       #rawXml:Ljava/lang/String;
    .restart local v6       #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .restart local v8       #rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_1
    const-string v5, "presence"

    .restart local v5       #type:Ljava/lang/String;
    goto :goto_0
.end method

.method private processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    .locals 6
    .parameter "original"
    .parameter "response"
    .parameter "sendXmppIntent"

    .prologue
    .line 459
    invoke-static {p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, appPackage:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 462
    :cond_0
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processResponse, original="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 467
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.RECEIVE_IQ_RESPONSE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from"

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v3, "accountId"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 472
    const-string v3, "message"

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v3, "originalStanza"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.RECEIVE_XMPP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, permission:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse, send intent broadcast with category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sendXmppIntent"
    .parameter "error"

    .prologue
    .line 490
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, appPackage:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 492
    const-string v3, "GTalkService"

    const-string v4, "[RawStanzaSendReceiveMgr] processSendFailed:app not found in the sendXmppIntent"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.SEND_XMPP_FAILED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "error"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v3, "intent"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 500
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.RECEIVE_XMPP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, permission:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RawStanzaSendReceiveMgr] processSendFailed: send intent broadcast with category="

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

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIntent(Landroid/content/Intent;Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;)Z
    .locals 6
    .parameter "intent"
    .parameter "info"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 434
    iget-object v0, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    .line 435
    .local v0, cinfo:Landroid/content/ComponentName;
    iget-boolean v2, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->isReceiverEnabled:Z

    .line 436
    .local v2, wasEnabled:Z
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 438
    .local v1, flag:I
    if-nez v1, :cond_0

    .line 439
    if-eqz v2, :cond_1

    move v1, v3

    .line 443
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 445
    const/4 v3, 0x0

    .line 455
    :goto_1
    return v3

    :cond_1
    move v1, v4

    .line 439
    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendXmppReceiveIntent: element="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->elementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ns="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->nameSpace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stanzaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 454
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v5, "com.google.android.xmpp.permission.SEND_RECEIVE"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "from"
    .parameter "elementName"
    .parameter "namespace"
    .parameter "rawXml"
    .parameter "stanzaType"

    .prologue
    .line 405
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v6

    invoke-virtual {v6, p5, p2, p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->getParserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 408
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 409
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendXmppReceiveIntent: cannot find a ParserInfo for element <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">, stanzaType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.google.android.gtalkservice.intent.RECEIVE_XMPP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "from"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v6, "accountId"

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 417
    const-string v6, "username"

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getOriginalUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v6, "message"

    invoke-virtual {v2, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v6, "stanzaType"

    invoke-virtual {v2, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 423
    .local v1, info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 424
    .local v3, intentCopy:Landroid/content/Intent;
    invoke-direct {p0, v3, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendIntent(Landroid/content/Intent;Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;)Z

    move-result v5

    .line 425
    .local v5, result:Z
    if-eqz v5, :cond_3

    const-string v6, "iq"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 73
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 77
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 78
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 92
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 111
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    goto :goto_0
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 170
    .local v5, result:Z
    const-string v9, "attr:id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, packetId:Ljava/lang/String;
    const-string v9, "attr:from"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, from:Ljava/lang/String;
    const-string v9, "attr:to"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, to:Ljava/lang/String;
    const-string v9, "attr:type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, type:Ljava/lang/String;
    const-string v9, "extension"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, extension:Ljava/lang/String;
    const-string v9, "use_rmq"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 177
    .local v8, useRmq:Z
    invoke-static {v4, v1, v6, v7, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 178
    .local v2, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    .line 180
    .local v3, iqType:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v3, v9, :cond_0

    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v9, :cond_2

    .line 184
    :cond_0
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v9

    new-instance v10, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;

    invoke-direct {v10, p0, v2, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V

    invoke-virtual {v9, v2, v10, v8}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    move-result v5

    .line 196
    :goto_0
    if-nez v5, :cond_1

    .line 197
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v10, "no_connection"

    invoke-static {v9, p1, v10}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void

    .line 192
    :cond_2
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 193
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v9, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v5

    goto :goto_0
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 247
    const-string v7, "attr:id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, packetId:Ljava/lang/String;
    const-string v7, "attr:from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, from:Ljava/lang/String;
    const-string v7, "attr:to"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, to:Ljava/lang/String;
    const-string v7, "attr:type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, type:Ljava/lang/String;
    const-string v7, "extension"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, extension:Ljava/lang/String;
    const-string v7, "use_rmq"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 254
    .local v6, useRmq:Z
    invoke-static {v2, v1, v4, v5, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v3

    .line 255
    .local v3, stanza:Lorg/jivesoftware/smack/packet/Message;
    if-nez v3, :cond_1

    .line 256
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v8, "unsupported_message_type"

    invoke-static {v7, p1, v8}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lorg/jivesoftware/smack/packet/Message;->setAccountId(J)V

    .line 263
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7, v3, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 264
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v8, "no_connection"

    invoke-static {v7, p1, v8}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 323
    const-string v7, "attr:to"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, to:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 327
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 328
    :cond_1
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendPresenceStanza: presence must have a \'to\' field that\'s not the same as the user\'s own username, intent\'s to="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v8, "unsupported_presence"

    invoke-static {v7, p1, v8}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 351
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    const-string v7, "attr:id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, packetId:Ljava/lang/String;
    const-string v7, "attr:from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, from:Ljava/lang/String;
    const-string v7, "attr:type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, type:Ljava/lang/String;
    const-string v7, "extension"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, extension:Ljava/lang/String;
    const-string v7, "use_rmq"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 340
    .local v6, useRmq:Z
    invoke-static {v2, v1, v4, v5, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v3

    .line 341
    .local v3, stanza:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v3, :cond_4

    .line 342
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v8, "unsupported_presence"

    invoke-static {v7, p1, v8}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 348
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v7, v3, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 349
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v8, "no_connection"

    invoke-static {v7, p1, v8}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
