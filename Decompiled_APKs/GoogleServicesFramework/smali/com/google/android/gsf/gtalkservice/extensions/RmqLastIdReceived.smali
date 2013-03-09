.class public Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RmqLastIdReceived.java"


# instance fields
.field private mLastId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 36
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "last-stanza"

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

    .line 50
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->mLastId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "last-stanza"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 56
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 57
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 60
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_LAST_ID:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 61
    .local v1, lastIdReceived:Lcom/google/common/io/protocol/ProtoBuf;
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->mLastId:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 63
    invoke-virtual {v0, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 64
    return-object v0
.end method

.method public getLastId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->mLastId:J

    return-wide v0
.end method

.method public setLastId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->mLastId:J

    .line 45
    return-void
.end method
