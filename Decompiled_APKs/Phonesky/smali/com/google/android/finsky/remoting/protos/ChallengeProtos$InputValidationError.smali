.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputValidationError"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasInputField:Z

.field private inputField_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->inputField_:I

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->cachedSize:I

    .line 149
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->cachedSize:I

    if-gez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getSerializedSize()I

    .line 215
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->cachedSize:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->inputField_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasInputField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->cachedSize:I

    .line 230
    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasErrorMessage:Z

    return v0
.end method

.method public hasInputField()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasInputField:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 239
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :sswitch_0
    return-object p0

    .line 249
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    goto :goto_0

    .line 253
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasErrorMessage:Z

    .line 176
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasInputField:Z

    .line 159
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->inputField_:I

    .line 160
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
    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 206
    :cond_1
    return-void
.end method
