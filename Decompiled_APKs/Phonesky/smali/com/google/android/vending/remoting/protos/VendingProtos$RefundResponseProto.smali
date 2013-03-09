.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefundResponseProto"
.end annotation


# instance fields
.field private asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private hasAsset:Z

.field private hasResult:Z

.field private hasResultDetail:Z

.field private resultDetail_:Ljava/lang/String;

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10940
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10950
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    .line 10967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 10987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    .line 11031
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    .line 10940
    return-void
.end method


# virtual methods
.method public getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .locals 1

    .prologue
    .line 10969
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 11034
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 11036
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getSerializedSize()I

    .line 11038
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 10952
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    return v0
.end method

.method public getResultDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10988
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11043
    const/4 v0, 0x0

    .line 11044
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11045
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11048
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11049
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11052
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11053
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResultDetail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11056
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->cachedSize:I

    .line 11057
    return v0
.end method

.method public hasAsset()Z
    .locals 1

    .prologue
    .line 10968
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 10951
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult:Z

    return v0
.end method

.method public hasResultDetail()Z
    .locals 1

    .prologue
    .line 10989
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11065
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11066
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 11070
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11071
    :sswitch_0
    return-object p0

    .line 11076
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 11080
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 11081
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 11082
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 11086
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->setResultDetail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    goto :goto_0

    .line 11066
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 10938
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10971
    if-nez p1, :cond_0

    .line 10972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10974
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset:Z

    .line 10975
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 10976
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult:Z

    .line 10955
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->result_:I

    .line 10956
    return-object p0
.end method

.method public setResultDetail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail:Z

    .line 10992
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->resultDetail_:Ljava/lang/String;

    .line 10993
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
    .line 11020
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11021
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 11023
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11024
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 11026
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->hasResultDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11027
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResultDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11029
    :cond_2
    return-void
.end method
