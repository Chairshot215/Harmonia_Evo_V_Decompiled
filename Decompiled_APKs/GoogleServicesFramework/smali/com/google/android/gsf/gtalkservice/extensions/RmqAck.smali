.class public Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RmqAck.java"


# instance fields
.field private mAckId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 32
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAckId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->mAckId:J

    return-wide v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "stanza-ack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "android:iq:rmq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->mAckId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "stanza-ack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 53
    .local v1, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 56
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 57
    .local v0, ack:Lcom/google/common/io/protocol/ProtoBuf;
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->mAckId:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 59
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 60
    return-object v1
.end method

.method public setAckId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->mAckId:J

    .line 41
    return-void
.end method
