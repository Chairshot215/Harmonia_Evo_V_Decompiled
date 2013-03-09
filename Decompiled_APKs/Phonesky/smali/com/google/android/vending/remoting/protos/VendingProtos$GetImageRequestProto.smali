.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetImageRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasImageId:Z

.field private hasImageUsage:Z

.field private hasProductType:Z

.field private hasScreenPropertyDensity:Z

.field private hasScreenPropertyHeight:Z

.field private hasScreenPropertyWidth:Z

.field private imageId_:Ljava/lang/String;

.field private imageUsage_:I

.field private productType_:I

.field private screenPropertyDensity_:I

.field private screenPropertyHeight_:I

.field private screenPropertyWidth_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13488
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13500
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    .line 13517
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    .line 13534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    .line 13551
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    .line 13568
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    .line 13585
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    .line 13602
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    .line 13658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    .line 13488
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13501
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 13661
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 13663
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getSerializedSize()I

    .line 13665
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    return v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13535
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUsage()I
    .locals 1

    .prologue
    .line 13519
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    return v0
.end method

.method public getProductType()I
    .locals 1

    .prologue
    .line 13604
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    return v0
.end method

.method public getScreenPropertyDensity()I
    .locals 1

    .prologue
    .line 13586
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    return v0
.end method

.method public getScreenPropertyHeight()I
    .locals 1

    .prologue
    .line 13569
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    return v0
.end method

.method public getScreenPropertyWidth()I
    .locals 1

    .prologue
    .line 13552
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13670
    const/4 v0, 0x0

    .line 13671
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13672
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13675
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13676
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageUsage()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13679
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13680
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13683
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13684
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13687
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13688
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13691
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13692
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyDensity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13695
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13696
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13699
    :cond_6
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    .line 13700
    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 13502
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasImageId()Z
    .locals 1

    .prologue
    .line 13536
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId:Z

    return v0
.end method

.method public hasImageUsage()Z
    .locals 1

    .prologue
    .line 13518
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage:Z

    return v0
.end method

.method public hasProductType()Z
    .locals 1

    .prologue
    .line 13603
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasScreenPropertyDensity()Z
    .locals 1

    .prologue
    .line 13587
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity:Z

    return v0
.end method

.method public hasScreenPropertyHeight()Z
    .locals 1

    .prologue
    .line 13570
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight:Z

    return v0
.end method

.method public hasScreenPropertyWidth()Z
    .locals 1

    .prologue
    .line 13553
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13709
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 13713
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13714
    :sswitch_0
    return-object p0

    .line 13719
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13723
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setImageUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13727
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setImageId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13731
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyWidth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13735
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyHeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13739
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13743
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13709
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
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
    .line 13486
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId:Z

    .line 13505
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    .line 13506
    return-object p0
.end method

.method public setImageId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId:Z

    .line 13539
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    .line 13540
    return-object p0
.end method

.method public setImageUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage:Z

    .line 13522
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    .line 13523
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType:Z

    .line 13607
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    .line 13608
    return-object p0
.end method

.method public setScreenPropertyDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity:Z

    .line 13590
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    .line 13591
    return-object p0
.end method

.method public setScreenPropertyHeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight:Z

    .line 13573
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    .line 13574
    return-object p0
.end method

.method public setScreenPropertyWidth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth:Z

    .line 13556
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    .line 13557
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
    .line 13635
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13636
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13638
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13639
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageUsage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13641
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13642
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13644
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13645
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13647
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13648
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13650
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13651
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyDensity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13653
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13654
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13656
    :cond_6
    return-void
.end method
