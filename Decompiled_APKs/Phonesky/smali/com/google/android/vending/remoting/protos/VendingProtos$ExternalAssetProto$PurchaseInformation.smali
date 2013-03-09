.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseInformation"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPurchaseTime:Z

.field private hasRefundStartPolicy:Z

.field private hasRefundTimeoutTime:Z

.field private hasRefundWindowDuration:Z

.field private purchaseTime_:J

.field private refundStartPolicy_:I

.field private refundTimeoutTime_:J

.field private refundWindowDuration_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2014
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2019
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    .line 2036
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    .line 2053
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    .line 2070
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    .line 2115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    .line 2014
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2118
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    if-gez v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getSerializedSize()I

    .line 2122
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 2020
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    return-wide v0
.end method

.method public getRefundStartPolicy()I
    .locals 1

    .prologue
    .line 2055
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    return v0
.end method

.method public getRefundTimeoutTime()J
    .locals 2

    .prologue
    .line 2037
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    return-wide v0
.end method

.method public getRefundWindowDuration()J
    .locals 2

    .prologue
    .line 2071
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2127
    const/4 v0, 0x0

    .line 2128
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2129
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getPurchaseTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2133
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundTimeoutTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2137
    const/16 v1, 0x2d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundStartPolicy()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2140
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2141
    const/16 v1, 0x2e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundWindowDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2144
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->cachedSize:I

    .line 2145
    return v0
.end method

.method public hasPurchaseTime()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime:Z

    return v0
.end method

.method public hasRefundStartPolicy()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy:Z

    return v0
.end method

.method public hasRefundTimeoutTime()Z
    .locals 1

    .prologue
    .line 2038
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime:Z

    return v0
.end method

.method public hasRefundWindowDuration()Z
    .locals 1

    .prologue
    .line 2072
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2154
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2158
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2159
    :sswitch_0
    return-object p0

    .line 2164
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setPurchaseTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2168
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundTimeoutTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2172
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundStartPolicy(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2176
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->setRefundWindowDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    goto :goto_0

    .line 2154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x50 -> :sswitch_1
        0x58 -> :sswitch_2
        0x168 -> :sswitch_3
        0x170 -> :sswitch_4
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
    .line 2012
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime:Z

    .line 2024
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->purchaseTime_:J

    .line 2025
    return-object p0
.end method

.method public setRefundStartPolicy(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy:Z

    .line 2058
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundStartPolicy_:I

    .line 2059
    return-object p0
.end method

.method public setRefundTimeoutTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime:Z

    .line 2041
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundTimeoutTime_:J

    .line 2042
    return-object p0
.end method

.method public setRefundWindowDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration:Z

    .line 2075
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->refundWindowDuration_:J

    .line 2076
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
    .line 2101
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasPurchaseTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getPurchaseTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2104
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundTimeoutTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2105
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundTimeoutTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2107
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundStartPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    const/16 v0, 0x2d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundStartPolicy()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2110
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->hasRefundWindowDuration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2111
    const/16 v0, 0x2e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;->getRefundWindowDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2113
    :cond_3
    return-void
.end method
