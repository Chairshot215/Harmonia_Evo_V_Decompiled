.class public Lorg/jivesoftware/smack/packet/HttpResponse;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "HttpResponse.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/HttpResponse;->data:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 31
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/HttpResponse;->data:[B

    .line 32
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HttpResponse.toProtoBuf() should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 39
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "<http-response id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpResponse;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpResponse;->getRmq2Id()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpResponse;->getLastStreamId()I

    move-result v0

    .line 45
    .local v0, lastStreamId:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/HttpResponse;->getStreamId()I

    move-result v3

    .line 47
    .local v3, streamId:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const-string v4, "persistent_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_0
    if-eq v0, v6, :cond_1

    .line 52
    const-string v4, "last_stream_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_1
    if-eq v3, v6, :cond_2

    .line 56
    const-string v4, "stream_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_2
    const-string v4, "/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
