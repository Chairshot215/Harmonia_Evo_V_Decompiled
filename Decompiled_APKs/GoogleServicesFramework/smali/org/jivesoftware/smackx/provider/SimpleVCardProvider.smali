.class public Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;
.super Ljava/lang/Object;
.source "SimpleVCardProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# instance fields
.field encodedAvatar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseVCardPhoto(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, done:Z
    const/4 v2, 0x0

    .line 89
    .local v2, node:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 92
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 108
    if-eqz v2, :cond_0

    .line 109
    const-string v3, "BINVAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->encodedAvatar:Ljava/lang/String;

    goto :goto_0

    .line 116
    .end local v1           #eventType:I
    :cond_3
    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 159
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->VCARD:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 151
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 9
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 119
    sget-byte v4, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v4, v5, :cond_0

    .line 120
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Should not get called."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 125
    .local v3, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/packet/VCard;->setHasModified(Z)V

    .line 127
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    .line 130
    .local v1, modified:Z
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setModified(Z)V

    .line 133
    .end local v1           #modified:Z
    :cond_1
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 136
    .local v2, photo:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v2, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 139
    .local v0, data:[B
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setAvatar([B)V

    .line 147
    .end local v0           #data:[B
    .end local v2           #photo:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    return-object v3
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, done:Z
    new-instance v4, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 47
    .local v4, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    iput-object v7, p0, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->encodedAvatar:Ljava/lang/String;

    .line 49
    const-string v5, "google:avatar"

    const-string v6, "modified"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, modified:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/VCard;->setHasModified(Z)V

    .line 53
    const-string v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/VCard;->setModified(Z)V

    .line 56
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 58
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->parseVCardPhoto(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v2           #eventType:I
    :cond_2
    iget-object v5, p0, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->encodedAvatar:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 72
    iget-object v5, p0, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->encodedAvatar:Ljava/lang/String;

    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    .local v0, data:[B
    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setAvatar([B)V

    .line 77
    iput-object v7, p0, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;->encodedAvatar:Ljava/lang/String;

    .line 80
    .end local v0           #data:[B
    :cond_3
    return-object v4
.end method
