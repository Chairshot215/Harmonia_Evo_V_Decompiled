.class public Lorg/jivesoftware/smackx/packet/MUCUser;
.super Ljava/lang/Object;
.source "MUCUser.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Status;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Item;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Decline;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    }
.end annotation


# instance fields
.field private decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

.field private destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

.field private invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

.field private item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

.field private password:Ljava/lang/String;

.field private status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    return-void
.end method


# virtual methods
.method public getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    return-object v0
.end method

.method public getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "x"

    return-object v0
.end method

.method public getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    return-object v0
.end method

.method public getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "http://jabber.org/protocol/muc#user"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    return-object v0
.end method

.method public setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V
    .locals 0
    .parameter "decline"

    .prologue
    .line 170
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    .line 171
    return-void
.end method

.method public setDestroy(Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;)V
    .locals 0
    .parameter "destroy"

    .prologue
    .line 210
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    .line 211
    return-void
.end method

.method public setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V
    .locals 0
    .parameter "invite"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    .line 161
    return-void
.end method

.method public setItem(Lorg/jivesoftware/smackx/packet/MUCUser$Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 179
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    .line 180
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 189
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->password:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smackx/packet/MUCUser$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    .line 200
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->toXML()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, xml:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 86
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 88
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</password>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_5
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
