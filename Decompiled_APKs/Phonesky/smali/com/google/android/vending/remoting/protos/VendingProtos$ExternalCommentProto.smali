.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalCommentProto"
.end annotation


# instance fields
.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private creationTime_:J

.field private creatorId_:Ljava/lang/String;

.field private creatorName_:Ljava/lang/String;

.field private hasBody:Z

.field private hasCreationTime:Z

.field private hasCreatorId:Z

.field private hasCreatorName:Z

.field private hasRating:Z

.field private rating_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3789
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->body_:Ljava/lang/String;

    .line 3811
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->rating_:I

    .line 3828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorName_:Ljava/lang/String;

    .line 3845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creationTime_:J

    .line 3862
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorId_:Ljava/lang/String;

    .line 3910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->cachedSize:I

    .line 3789
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3913
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 3915
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getSerializedSize()I

    .line 3917
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->cachedSize:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 3846
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creationTime_:J

    return-wide v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 3812
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->rating_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3922
    const/4 v0, 0x0

    .line 3923
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3924
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3927
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasRating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3928
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getRating()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3931
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3932
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3935
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreationTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3936
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreationTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3939
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3940
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3943
    :cond_4
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->cachedSize:I

    .line 3944
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 3796
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasBody:Z

    return v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 3847
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreationTime:Z

    return v0
.end method

.method public hasCreatorId()Z
    .locals 1

    .prologue
    .line 3864
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorId:Z

    return v0
.end method

.method public hasCreatorName()Z
    .locals 1

    .prologue
    .line 3830
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorName:Z

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 3813
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasRating:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3952
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3953
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3957
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3958
    :sswitch_0
    return-object p0

    .line 3963
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->setBody(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    goto :goto_0

    .line 3967
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->setRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    goto :goto_0

    .line 3971
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->setCreatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    goto :goto_0

    .line 3975
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->setCreationTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    goto :goto_0

    .line 3979
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    goto :goto_0

    .line 3953
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 3787
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasBody:Z

    .line 3799
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->body_:Ljava/lang/String;

    .line 3800
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreationTime:Z

    .line 3850
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creationTime_:J

    .line 3851
    return-object p0
.end method

.method public setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorId:Z

    .line 3867
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorId_:Ljava/lang/String;

    .line 3868
    return-object p0
.end method

.method public setCreatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorName:Z

    .line 3833
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->creatorName_:Ljava/lang/String;

    .line 3834
    return-object p0
.end method

.method public setRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasRating:Z

    .line 3816
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->rating_:I

    .line 3817
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
    .line 3893
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3894
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3896
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3897
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3899
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3900
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3902
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3903
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3905
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->hasCreatorId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3906
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3908
    :cond_4
    return-void
.end method
