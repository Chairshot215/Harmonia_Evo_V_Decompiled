.class public Lorg/jivesoftware/smack/packet/BindAccountRequest;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "BindAccountRequest.java"


# instance fields
.field private final accountId:J

.field private final domain:Ljava/lang/String;

.field private final resource:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "user"
    .parameter "domain"
    .parameter "resource"
    .parameter "authToken"
    .parameter "accountId"

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->user:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->domain:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->resource:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->token:Ljava/lang/String;

    .line 29
    iput-wide p5, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->accountId:J

    .line 30
    return-void
.end method


# virtual methods
.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 68
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountRequest;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 69
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 70
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 71
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 72
    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 73
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 74
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "<bind-account-request id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BindAccountRequest;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "\" from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "\" to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "\" resource=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "\" account-id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-wide v1, p0, Lorg/jivesoftware/smack/packet/BindAccountRequest;->accountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "</bind-account-request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
