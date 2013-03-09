.class public final Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EncryptedSubscriberInfo.java"


# instance fields
.field private cachedSize:I

.field private carrierKeyVersion_:I

.field private data_:Ljava/lang/String;

.field private encryptedKey_:Ljava/lang/String;

.field private googleKeyVersion_:I

.field private hasCarrierKeyVersion:Z

.field private hasData:Z

.field private hasEncryptedKey:Z

.field private hasGoogleKeyVersion:Z

.field private hasInitVector:Z

.field private hasSignature:Z

.field private initVector_:Ljava/lang/String;

.field private signature_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    .line 81
    iput v1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    .line 98
    iput v1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSerializedSize()I

    .line 157
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    return v0
.end method

.method public getCarrierKeyVersion()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleKeyVersion()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    return v0
.end method

.method public getInitVector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_5
    iput v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    .line 188
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCarrierKeyVersion()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData:Z

    return v0
.end method

.method public hasEncryptedKey()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    return v0
.end method

.method public hasGoogleKeyVersion()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    return v0
.end method

.method public hasInitVector()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 197
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :sswitch_0
    return-object p0

    .line 207
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 211
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 215
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 219
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setInitVector(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 223
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setGoogleKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 227
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setCarrierKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    .line 103
    iput p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    .line 104
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData:Z

    .line 18
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    .line 19
    return-object p0
.end method

.method public setEncryptedKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    .line 35
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setGoogleKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    .line 86
    iput p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    .line 87
    return-object p0
.end method

.method public setInitVector(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    .line 69
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature:Z

    .line 52
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    .line 53
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
    .line 130
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 148
    :cond_5
    return-void
.end method
