.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Suggestion"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasIsShortcut:Z

.field private hasLogType:Z

.field private hasSource:Z

.field private isShortcut_:Z

.field private logType_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->source_:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->isShortcut_:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->logType_:Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->cachedSize:I

    if-gez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getSerializedSize()I

    .line 94
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->cachedSize:I

    return v0
.end method

.method public getIsShortcut()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->isShortcut_:Z

    return v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->logType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasIsShortcut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getIsShortcut()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasLogType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getLogType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_2
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->cachedSize:I

    .line 112
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIsShortcut()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasIsShortcut:Z

    return v0
.end method

.method public hasLogType()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasLogType:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasSource:Z

    return v0
.end method

.method public setIsShortcut(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasIsShortcut:Z

    .line 36
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->isShortcut_:Z

    .line 37
    return-object p0
.end method

.method public setLogType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasLogType:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->logType_:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasSource:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->source_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasIsShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getIsShortcut()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->hasLogType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->getLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_2
    return-void
.end method
