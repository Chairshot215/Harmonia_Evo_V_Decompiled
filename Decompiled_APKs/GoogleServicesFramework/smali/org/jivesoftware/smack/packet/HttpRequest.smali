.class public Lorg/jivesoftware/smack/packet/HttpRequest;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "HttpRequest.java"


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/HttpRequest;->data:[B

    .line 30
    return-void
.end method


# virtual methods
.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 5

    .prologue
    .line 53
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 55
    .local v1, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getRmq2Id()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, rmq2Id:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 57
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getLastStreamId()I

    move-result v0

    .line 62
    .local v0, lastStreamId:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 63
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 68
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 69
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/HttpRequest;->data:[B

    invoke-virtual {v1, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 70
    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "<http-request id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getRmq2Id()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getLastStreamId()I

    move-result v0

    .line 40
    .local v0, lastStreamId:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    const-string v3, "persistent_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 45
    const-string v3, "last_stream_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_1
    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
