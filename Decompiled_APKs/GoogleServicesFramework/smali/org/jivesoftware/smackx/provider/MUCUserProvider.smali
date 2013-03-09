.class public Lorg/jivesoftware/smackx/provider/MUCUserProvider;
.super Ljava/lang/Object;
.source "MUCUserProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;-><init>()V

    .line 141
    .local v0, decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setFrom(Ljava/lang/String;)V

    .line 142
    const-string v3, ""

    const-string v4, "to"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setTo(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 145
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const/4 v1, 0x1

    goto :goto_0

    .line 156
    .end local v2           #eventType:I
    :cond_2
    return-object v0
.end method

.method private parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;-><init>()V

    .line 162
    .local v0, destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->setJid(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 165
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 176
    .end local v2           #eventType:I
    :cond_2
    return-object v0
.end method

.method private parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;-><init>()V

    .line 120
    .local v2, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setFrom(Ljava/lang/String;)V

    .line 121
    const-string v3, ""

    const-string v4, "to"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setTo(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 124
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    .end local v1           #eventType:I
    :cond_2
    return-object v2
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    const-string v3, ""

    const-string v4, "affiliation"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "role"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    const-string v3, ""

    const-string v4, "nick"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setNick(Ljava/lang/String;)V

    .line 97
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setJid(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 100
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setActor(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    .end local v1           #eventType:I
    :cond_3
    return-object v2
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public parseExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 57
    .local v2, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    const/4 v0, 0x0

    .line 58
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 60
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V

    .line 64
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setItem(Lorg/jivesoftware/smackx/packet/MUCUser$Item;)V

    .line 67
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setPassword(Ljava/lang/String;)V

    .line 70
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    const-string v4, ""

    const-string v5, "code"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setStatus(Lorg/jivesoftware/smackx/packet/MUCUser$Status;)V

    .line 73
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V

    .line 76
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDestroy(Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;)V

    goto/16 :goto_0

    .line 80
    :cond_6
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 87
    .end local v1           #eventType:I
    :cond_7
    return-object v2
.end method
