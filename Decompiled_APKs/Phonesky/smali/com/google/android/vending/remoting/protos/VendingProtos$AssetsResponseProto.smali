.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsResponseProto"
.end annotation


# instance fields
.field private altAsset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation
.end field

.field private asset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private correctedQuery_:Ljava/lang/String;

.field private hasCorrectedQuery:Z

.field private hasHeader:Z

.field private hasListType:Z

.field private hasNumCorrectedEntries:Z

.field private hasNumTotalEntries:Z

.field private header_:Ljava/lang/String;

.field private listType_:I

.field private numCorrectedEntries_:J

.field private numTotalEntries_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4607
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    .line 4650
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    .line 4667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    .line 4683
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    .line 4717
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    .line 4734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    .line 4751
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    .line 4813
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    .line 4607
    return-void
.end method


# virtual methods
.method public addAltAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4700
    if-nez p1, :cond_0

    .line 4701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4703
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    .line 4706
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4707
    return-object p0
.end method

.method public addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4633
    if-nez p1, :cond_0

    .line 4634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4636
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    .line 4639
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4640
    return-object p0
.end method

.method public getAltAssetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4686
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4816
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 4818
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getSerializedSize()I

    .line 4820
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    return v0
.end method

.method public getCorrectedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 4753
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    return v0
.end method

.method public getNumCorrectedEntries()J
    .locals 2

    .prologue
    .line 4718
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    return-wide v0
.end method

.method public getNumTotalEntries()J
    .locals 2

    .prologue
    .line 4651
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 4825
    const/4 v2, 0x0

    .line 4826
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4827
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4830
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4831
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumTotalEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4834
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4835
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4838
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAltAssetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4839
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 4842
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4843
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumCorrectedEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4846
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4847
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4850
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4851
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getListType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4854
    :cond_6
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    .line 4855
    return v2
.end method

.method public hasCorrectedQuery()Z
    .locals 1

    .prologue
    .line 4669
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 4736
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader:Z

    return v0
.end method

.method public hasListType()Z
    .locals 1

    .prologue
    .line 4752
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType:Z

    return v0
.end method

.method public hasNumCorrectedEntries()Z
    .locals 1

    .prologue
    .line 4719
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries:Z

    return v0
.end method

.method public hasNumTotalEntries()Z
    .locals 1

    .prologue
    .line 4652
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4864
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4868
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4869
    :sswitch_0
    return-object p0

    .line 4874
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 4875
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4876
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4880
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4884
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setCorrectedQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4888
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 4889
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4890
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->addAltAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4894
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setNumCorrectedEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4898
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setHeader(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4902
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setListType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4864
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 4605
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCorrectedQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery:Z

    .line 4672
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    .line 4673
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader:Z

    .line 4739
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    .line 4740
    return-object p0
.end method

.method public setListType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType:Z

    .line 4756
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    .line 4757
    return-object p0
.end method

.method public setNumCorrectedEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries:Z

    .line 4722
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    .line 4723
    return-object p0
.end method

.method public setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries:Z

    .line 4655
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    .line 4656
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4790
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4791
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 4793
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4794
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumTotalEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4796
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4797
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4799
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAltAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4800
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 4802
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4803
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumCorrectedEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4805
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4806
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4808
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4809
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getListType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4811
    :cond_6
    return-void
.end method
