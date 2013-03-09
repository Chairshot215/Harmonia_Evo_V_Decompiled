.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentsRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetReferrer_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasAssetReferrer:Z

.field private hasNumEntries:Z

.field private hasShouldReturnSelfComment:Z

.field private hasStartIndex:Z

.field private numEntries_:J

.field private shouldReturnSelfComment_:Z

.field private startIndex_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4924
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    .line 4946
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    .line 4963
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    .line 4980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    .line 4997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    .line 5046
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    .line 4924
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4998
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5049
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 5051
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getSerializedSize()I

    .line 5053
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    return v0
.end method

.method public getNumEntries()J
    .locals 2

    .prologue
    .line 4964
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5058
    const/4 v0, 0x0

    .line 5059
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5060
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5063
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5064
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getStartIndex()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5067
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5068
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getNumEntries()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5071
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5072
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getShouldReturnSelfComment()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5075
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5076
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5079
    :cond_4
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    .line 5080
    return v0
.end method

.method public getShouldReturnSelfComment()Z
    .locals 1

    .prologue
    .line 4981
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    return v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 4947
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    return-wide v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 4931
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasAssetReferrer()Z
    .locals 1

    .prologue
    .line 4999
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer:Z

    return v0
.end method

.method public hasNumEntries()Z
    .locals 1

    .prologue
    .line 4965
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries:Z

    return v0
.end method

.method public hasShouldReturnSelfComment()Z
    .locals 1

    .prologue
    .line 4982
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment:Z

    return v0
.end method

.method public hasStartIndex()Z
    .locals 1

    .prologue
    .line 4948
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5089
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5093
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5094
    :sswitch_0
    return-object p0

    .line 5099
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5103
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5107
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5111
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setShouldReturnSelfComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5115
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5089
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 4922
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId:Z

    .line 4934
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    .line 4935
    return-object p0
.end method

.method public setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer:Z

    .line 5002
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    .line 5003
    return-object p0
.end method

.method public setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries:Z

    .line 4968
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    .line 4969
    return-object p0
.end method

.method public setShouldReturnSelfComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment:Z

    .line 4985
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    .line 4986
    return-object p0
.end method

.method public setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex:Z

    .line 4951
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    .line 4952
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
    .line 5029
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5030
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5032
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5033
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getStartIndex()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 5035
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5036
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getNumEntries()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 5038
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5039
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getShouldReturnSelfComment()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5041
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5042
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5044
    :cond_4
    return-void
.end method
