.class public final Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

.field private hasGetResponse:Z

.field private hasNextPageUrl:Z

.field private nextPageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    .line 747
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    .line 683
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getSerializedSize()I

    .line 754
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    return v0
.end method

.method public getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    return-object v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasNextPageUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    .line 769
    return v0
.end method

.method public hasGetResponse()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasNextPageUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 778
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 782
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 783
    :sswitch_0
    return-object p0

    .line 788
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;-><init>()V

    .line 789
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 790
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    goto :goto_0

    .line 794
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    goto :goto_0

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 680
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v0

    return-object v0
.end method

.method public setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 695
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse:Z

    .line 696
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 697
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasNextPageUrl:Z

    .line 713
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    .line 714
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
    .line 739
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasNextPageUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 745
    :cond_1
    return-void
.end method
