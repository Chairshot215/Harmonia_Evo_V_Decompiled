.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSubCategoriesRequestProto"
.end annotation


# instance fields
.field private assetType_:I

.field private cachedSize:I

.field private hasAssetType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13890
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13895
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->assetType_:I

    .line 13927
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->cachedSize:I

    .line 13890
    return-void
.end method


# virtual methods
.method public getAssetType()I
    .locals 1

    .prologue
    .line 13897
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->assetType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 13930
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 13932
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->getSerializedSize()I

    .line 13934
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13939
    const/4 v0, 0x0

    .line 13940
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->hasAssetType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13941
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->getAssetType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13944
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->cachedSize:I

    .line 13945
    return v0
.end method

.method public hasAssetType()Z
    .locals 1

    .prologue
    .line 13896
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->hasAssetType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13954
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 13958
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13959
    :sswitch_0
    return-object p0

    .line 13964
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    goto :goto_0

    .line 13954
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 13888
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->hasAssetType:Z

    .line 13900
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->assetType_:I

    .line 13901
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
    .line 13922
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->hasAssetType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13923
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;->getAssetType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13925
    :cond_0
    return-void
.end method
