.class public final Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DebugInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timing"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasTimeInMs:Z

.field private name_:Ljava/lang/String;

.field private timeInMs_:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->name_:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs_:D

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    if-gez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->getSerializedSize()I

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->getTimeInMs()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    .line 97
    return v0
.end method

.method public getTimeInMs()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs_:D

    return-wide v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasName:Z

    return v0
.end method

.method public hasTimeInMs()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 106
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :sswitch_0
    return-object p0

    .line 116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    goto :goto_0

    .line 120
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->setTimeInMs(D)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasName:Z

    .line 25
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->name_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public setTimeInMs(D)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs:Z

    .line 42
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs_:D

    .line 43
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;->getTimeInMs()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 73
    :cond_1
    return-void
.end method
