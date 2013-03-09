.class public Lcom/google/android/gsf/gtalkservice/extensions/RmqAckProvider;
.super Ljava/lang/Object;
.source "RmqAckProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;-><init>()V

    .line 50
    .local v0, rmqAck:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->setAckId(J)V

    .line 51
    return-object v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 35
    .local v0, event:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 36
    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    .line 38
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 43
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;-><init>()V

    .line 44
    .local v1, rmqAck:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->setAckId(J)V

    goto :goto_0
.end method
