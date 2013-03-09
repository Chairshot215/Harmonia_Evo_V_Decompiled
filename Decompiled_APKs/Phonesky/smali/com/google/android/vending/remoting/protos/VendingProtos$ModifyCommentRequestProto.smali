.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyCommentRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

.field private deleteComment_:Z

.field private flagAsset_:Z

.field private flagMessage_:Ljava/lang/String;

.field private flagType_:I

.field private hasAssetId:Z

.field private hasComment:Z

.field private hasDeleteComment:Z

.field private hasFlagAsset:Z

.field private hasFlagMessage:Z

.field private hasFlagType:Z

.field private hasNonFlagFlow:Z

.field private nonFlagFlow_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5314
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 5344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5364
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    .line 5381
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    .line 5398
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    .line 5415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    .line 5432
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    .line 5489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    .line 5314
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5328
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5492
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 5494
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getSerializedSize()I

    .line 5496
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    return v0
.end method

.method public getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1

    .prologue
    .line 5346
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    return-object v0
.end method

.method public getDeleteComment()Z
    .locals 1

    .prologue
    .line 5365
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    return v0
.end method

.method public getFlagAsset()Z
    .locals 1

    .prologue
    .line 5382
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    return v0
.end method

.method public getFlagMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5416
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagType()I
    .locals 1

    .prologue
    .line 5400
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    return v0
.end method

.method public getNonFlagFlow()Z
    .locals 1

    .prologue
    .line 5433
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5501
    const/4 v0, 0x0

    .line 5502
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5503
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5506
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5507
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5510
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5511
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getDeleteComment()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5514
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5515
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagAsset()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5518
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5519
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5522
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5523
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5526
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5527
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getNonFlagFlow()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5530
    :cond_6
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    .line 5531
    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 5329
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 5345
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment:Z

    return v0
.end method

.method public hasDeleteComment()Z
    .locals 1

    .prologue
    .line 5366
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment:Z

    return v0
.end method

.method public hasFlagAsset()Z
    .locals 1

    .prologue
    .line 5383
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset:Z

    return v0
.end method

.method public hasFlagMessage()Z
    .locals 1

    .prologue
    .line 5417
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage:Z

    return v0
.end method

.method public hasFlagType()Z
    .locals 1

    .prologue
    .line 5399
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType:Z

    return v0
.end method

.method public hasNonFlagFlow()Z
    .locals 1

    .prologue
    .line 5434
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5539
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5540
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5544
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5545
    :sswitch_0
    return-object p0

    .line 5550
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5554
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5555
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5556
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5560
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setDeleteComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5564
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5568
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5572
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5576
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setNonFlagFlow(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 5312
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId:Z

    .line 5332
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 5333
    return-object p0
.end method

.method public setComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5348
    if-nez p1, :cond_0

    .line 5349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment:Z

    .line 5352
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5353
    return-object p0
.end method

.method public setDeleteComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment:Z

    .line 5369
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    .line 5370
    return-object p0
.end method

.method public setFlagAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset:Z

    .line 5386
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    .line 5387
    return-object p0
.end method

.method public setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage:Z

    .line 5420
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    .line 5421
    return-object p0
.end method

.method public setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType:Z

    .line 5403
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    .line 5404
    return-object p0
.end method

.method public setNonFlagFlow(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow:Z

    .line 5437
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    .line 5438
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
    .line 5466
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5467
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5469
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5470
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5472
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5473
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getDeleteComment()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5475
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5476
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagAsset()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5478
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5479
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5481
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5482
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5484
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5485
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getNonFlagFlow()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5487
    :cond_6
    return-void
.end method
