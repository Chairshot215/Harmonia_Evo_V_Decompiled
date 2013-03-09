.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseOrderResponseProto"
.end annotation


# instance fields
.field private asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private deprecatedResultCode_:I

.field private hasAsset:Z

.field private hasDeprecatedResultCode:Z

.field private hasPurchaseInfo:Z

.field private hasPurchaseResult:Z

.field private purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9099
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    .line 9121
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 9141
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 9161
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 9215
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    .line 9099
    return-void
.end method


# virtual methods
.method public getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .locals 1

    .prologue
    .line 9143
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9218
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9220
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getSerializedSize()I

    .line 9222
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    return v0
.end method

.method public getDeprecatedResultCode()I
    .locals 1

    .prologue
    .line 9106
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    return v0
.end method

.method public getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1

    .prologue
    .line 9123
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    return-object v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1

    .prologue
    .line 9163
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9227
    const/4 v0, 0x0

    .line 9228
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9229
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getDeprecatedResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9232
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9233
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9237
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9240
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9241
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9244
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->cachedSize:I

    .line 9245
    return v0
.end method

.method public hasAsset()Z
    .locals 1

    .prologue
    .line 9142
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset:Z

    return v0
.end method

.method public hasDeprecatedResultCode()Z
    .locals 1

    .prologue
    .line 9105
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode:Z

    return v0
.end method

.method public hasPurchaseInfo()Z
    .locals 1

    .prologue
    .line 9122
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo:Z

    return v0
.end method

.method public hasPurchaseResult()Z
    .locals 1

    .prologue
    .line 9162
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9254
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9258
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9259
    :sswitch_0
    return-object p0

    .line 9264
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9268
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;-><init>()V

    .line 9269
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9270
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9274
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 9275
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9276
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9280
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 9281
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9282
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    goto :goto_0

    .line 9254
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 9097
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9145
    if-nez p1, :cond_0

    .line 9146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset:Z

    .line 9149
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->asset_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 9150
    return-object p0
.end method

.method public setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode:Z

    .line 9109
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->deprecatedResultCode_:I

    .line 9110
    return-object p0
.end method

.method public setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9125
    if-nez p1, :cond_0

    .line 9126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo:Z

    .line 9129
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 9130
    return-object p0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9165
    if-nez p1, :cond_0

    .line 9166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9168
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult:Z

    .line 9169
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 9170
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
    .line 9201
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasDeprecatedResultCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9202
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getDeprecatedResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9205
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9207
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9208
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9210
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9211
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9213
    :cond_3
    return-void
.end method
