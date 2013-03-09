.class public Lorg/jivesoftware/smack/packet/PresenceCapability;
.super Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
.source "PresenceCapability.java"


# instance fields
.field private mExtension:Ljava/lang/String;

.field private mHash:Ljava/lang/String;

.field private mNode:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 36
    const-string v0, "c"

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/PresenceCapability;->setNode(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mNode:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mExtension:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mNode:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mVersion:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 98
    sget-byte v5, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v5, v6, :cond_0

    .line 99
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 125
    :goto_0
    return-object v2

    .line 102
    :cond_0
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 103
    .local v2, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x8

    invoke-virtual {v2, v6, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 106
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CAPABILITIES:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 107
    .local v0, capabilities:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PresenceCapability;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mExtension:Ljava/lang/String;

    .line 110
    .local v1, ext:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 114
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mVersion:Ljava/lang/String;

    .line 115
    .local v4, version:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    invoke-virtual {v0, v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 119
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mHash:Ljava/lang/String;

    .line 120
    .local v3, hash:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 121
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 124
    :cond_3
    invoke-virtual {v2, v7, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "<c xmlns=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "http://jabber.org/protocol/caps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v4, " node=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PresenceCapability;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mExtension:Ljava/lang/String;

    .line 79
    .local v1, ext:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    const-string v4, " ext=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mVersion:Ljava/lang/String;

    .line 84
    .local v3, version:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    const-string v4, " ver=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/PresenceCapability;->mHash:Ljava/lang/String;

    .line 89
    .local v2, hash:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    const-string v4, " hash=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_2
    const-string v4, " />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
