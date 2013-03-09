.class public Lorg/jivesoftware/smack/packet/XMPPError;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "XMPPError.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 69
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "message"

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 80
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 81
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "message"
    .parameter "type"

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 85
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 86
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 100
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 101
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->ERROR_INFO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 154
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x1

    iget v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 160
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 161
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 163
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v1, txt:Ljava/lang/StringBuffer;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/XMPPError;->getType()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, errorType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 174
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "<error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    if-eqz v2, :cond_0

    .line 137
    const-string v2, " code=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/XMPPError;->getType()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, errorType:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 141
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_1
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 145
    const-string v2, "<text>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "</text>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/XMPPError;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v2, "</error>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
