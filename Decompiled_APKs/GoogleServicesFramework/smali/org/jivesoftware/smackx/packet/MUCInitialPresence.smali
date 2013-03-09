.class public Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
.super Ljava/lang/Object;
.source "MUCInitialPresence.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
    }
.end annotation


# instance fields
.field private history:Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "x"

    return-object v0
.end method

.method public getHistory()Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->history:Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "http://jabber.org/protocol/muc#user"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->password:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->toXML()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, xml:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 80
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 82
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</password>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getHistory()Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getHistory()Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
