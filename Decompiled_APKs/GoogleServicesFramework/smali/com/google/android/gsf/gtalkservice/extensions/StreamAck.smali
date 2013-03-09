.class public Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "StreamAck.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 32
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "stream-ack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "google:mobile:rmq2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 42
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 43
    .local v1, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 46
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->STREAM_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 47
    .local v0, ack:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 48
    return-object v1
.end method
