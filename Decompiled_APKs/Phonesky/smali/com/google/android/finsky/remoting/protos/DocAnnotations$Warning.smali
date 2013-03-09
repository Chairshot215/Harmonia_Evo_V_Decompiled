.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Warning"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLocalizedMessage:Z

.field private localizedMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1074
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    .line 1106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    .line 1069
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    if-gez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getSerializedSize()I

    .line 1113
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    .line 1124
    return v0
.end method

.method public hasLocalizedMessage()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1133
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1137
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    :sswitch_0
    return-object p0

    .line 1143
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->setLocalizedMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    goto :goto_0

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1066
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    move-result-object v0

    return-object v0
.end method

.method public setLocalizedMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .locals 1
    .parameter "value"

    .prologue
    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage:Z

    .line 1079
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    .line 1080
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
    .line 1101
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1104
    :cond_0
    return-void
.end method
