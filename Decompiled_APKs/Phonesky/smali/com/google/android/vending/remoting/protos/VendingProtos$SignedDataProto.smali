.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedDataProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSignature:Z

.field private hasSignedData:Z

.field private signature_:Ljava/lang/String;

.field private signedData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19159
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    .line 19181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    .line 19219
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    .line 19159
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19222
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19224
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSerializedSize()I

    .line 19226
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 19231
    const/4 v0, 0x0

    .line 19232
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19233
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19236
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19237
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19240
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->cachedSize:I

    .line 19241
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19182
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19165
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 19183
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature:Z

    return v0
.end method

.method public hasSignedData()Z
    .locals 1

    .prologue
    .line 19166
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19250
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19254
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19255
    :sswitch_0
    return-object p0

    .line 19260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    goto :goto_0

    .line 19264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    goto :goto_0

    .line 19250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 19157
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature:Z

    .line 19186
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signature_:Ljava/lang/String;

    .line 19187
    return-object p0
.end method

.method public setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData:Z

    .line 19169
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->signedData_:Ljava/lang/String;

    .line 19170
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
    .line 19211
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignedData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19212
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19214
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19215
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19217
    :cond_1
    return-void
.end method
