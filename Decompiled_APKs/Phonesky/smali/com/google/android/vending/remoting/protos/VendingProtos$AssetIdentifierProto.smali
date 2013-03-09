.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetIdentifierProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20628
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20633
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->packageName_:Ljava/lang/String;

    .line 20650
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->versionCode_:I

    .line 20667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->assetId_:Ljava/lang/String;

    .line 20710
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->cachedSize:I

    .line 20628
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20668
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20713
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20715
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getSerializedSize()I

    .line 20717
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->cachedSize:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20634
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 20722
    const/4 v0, 0x0

    .line 20723
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20724
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20727
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20728
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20731
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20732
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20735
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->cachedSize:I

    .line 20736
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 20651
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 20669
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasAssetId:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 20635
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 20652
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20744
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20745
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 20749
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20750
    :sswitch_0
    return-object p0

    .line 20755
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    goto :goto_0

    .line 20759
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    goto :goto_0

    .line 20763
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    goto :goto_0

    .line 20745
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 20626
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasAssetId:Z

    .line 20672
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->assetId_:Ljava/lang/String;

    .line 20673
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasPackageName:Z

    .line 20638
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->packageName_:Ljava/lang/String;

    .line 20639
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasVersionCode:Z

    .line 20655
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->versionCode_:I

    .line 20656
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
    .line 20699
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20700
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20702
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20703
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 20705
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20706
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20708
    :cond_2
    return-void
.end method
