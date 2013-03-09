.class public Lcom/google/android/gsf/gtalkservice/extensions/Idle;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Idle.java"


# instance fields
.field private mIsIdle:Z

.field private mSendAwayPresenceWhenIdle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mIsIdle:Z

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mSendAwayPresenceWhenIdle:Z

    .line 34
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "google:mobile:idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, " idle=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->getSendAwayPresenceWhenIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, " away=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->getSendAwayPresenceWhenIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 66
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v2, 0xa

    invoke-virtual {v0, v3, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 69
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->IDLE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 70
    .local v1, idle:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->getSendAwayPresenceWhenIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->getSendAwayPresenceWhenIdle()Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 77
    :cond_0
    invoke-virtual {v0, v4, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 79
    return-object v0
.end method

.method public getSendAwayPresenceWhenIdle()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mSendAwayPresenceWhenIdle:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mIsIdle:Z

    return v0
.end method

.method public setIdle(Z)V
    .locals 0
    .parameter "isIdle"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mIsIdle:Z

    .line 43
    return-void
.end method

.method public setSendAwayPresenceWhenIdle(Z)V
    .locals 0
    .parameter "sendAway"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->mSendAwayPresenceWhenIdle:Z

    .line 51
    return-void
.end method
