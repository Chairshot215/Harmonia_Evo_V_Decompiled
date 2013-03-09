.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninstallReasonRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasReason:Z

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11108
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->assetId_:Ljava/lang/String;

    .line 11137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->reason_:I

    .line 11175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->cachedSize:I

    .line 11108
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11121
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 11178
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 11180
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->getSerializedSize()I

    .line 11182
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->cachedSize:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 11139
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11187
    const/4 v0, 0x0

    .line 11188
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11189
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11192
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11193
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11196
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->cachedSize:I

    .line 11197
    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 11122
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 11138
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasReason:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11206
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 11210
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11211
    :sswitch_0
    return-object p0

    .line 11216
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    goto :goto_0

    .line 11220
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->setReason(I)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    goto :goto_0

    .line 11206
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 11106
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasAssetId:Z

    .line 11125
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->assetId_:Ljava/lang/String;

    .line 11126
    return-object p0
.end method

.method public setReason(I)Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasReason:Z

    .line 11142
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->reason_:I

    .line 11143
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
    .line 11167
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11168
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11170
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11171
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 11173
    :cond_1
    return-void
.end method
