.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateCommentRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private commentRating_:I

.field private creatorId_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasCommentRating:Z

.field private hasCreatorId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11309
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 11336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    .line 11353
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    .line 11396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    .line 11309
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11320
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 11399
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 11401
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getSerializedSize()I

    .line 11403
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    return v0
.end method

.method public getCommentRating()I
    .locals 1

    .prologue
    .line 11355
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    return v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11337
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11408
    const/4 v0, 0x0

    .line 11409
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11410
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11414
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11417
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11418
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCommentRating()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11421
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    .line 11422
    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 11321
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasCommentRating()Z
    .locals 1

    .prologue
    .line 11354
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating:Z

    return v0
.end method

.method public hasCreatorId()Z
    .locals 1

    .prologue
    .line 11338
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11431
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 11435
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11436
    :sswitch_0
    return-object p0

    .line 11441
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11445
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11449
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setCommentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 11307
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId:Z

    .line 11324
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 11325
    return-object p0
.end method

.method public setCommentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating:Z

    .line 11358
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    .line 11359
    return-object p0
.end method

.method public setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId:Z

    .line 11341
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    .line 11342
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
    .line 11385
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11386
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11388
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11389
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11391
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11392
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCommentRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 11394
    :cond_2
    return-void
.end method
