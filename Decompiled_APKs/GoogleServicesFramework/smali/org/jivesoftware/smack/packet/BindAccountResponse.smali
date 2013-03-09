.class public Lorg/jivesoftware/smack/packet/BindAccountResponse;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "BindAccountResponse.java"


# instance fields
.field private jid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/BindAccountResponse;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 34
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/BindAccountResponse;->jid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BindAccountResponse.toProtoBuf() should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 40
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "<bind-account-response id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/BindAccountResponse;->jid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 44
    const-string v4, "\" jid=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/BindAccountResponse;->jid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v4, "\" "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getLastStreamId()I

    move-result v1

    .line 49
    .local v1, lastStreamId:I
    if-eq v1, v6, :cond_0

    .line 50
    const-string v4, "last_stream_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getStreamId()I

    move-result v3

    .line 55
    .local v3, streamId:I
    if-eq v3, v6, :cond_1

    .line 56
    const-string v4, "stream_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_1
    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .end local v1           #lastStreamId:I
    .end local v3           #streamId:I
    :cond_2
    :goto_0
    const-string v4, "</bind-account-response>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 61
    :cond_3
    const-string v4, "\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 63
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
