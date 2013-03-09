.class public final Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailsResponse"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

.field private docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

.field private footerHtml_:Ljava/lang/String;

.field private hasAnalyticsCookie:Z

.field private hasDocV1:Z

.field private hasDocV2:Z

.field private hasFooterHtml:Z

.field private hasUserReview:Z

.field private userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 35
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->footerHtml_:Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getSerializedSize()I

    .line 156
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    return v0
.end method

.method public getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    return-object v0
.end method

.method public getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getFooterHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->footerHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasFooterHtml()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getFooterHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    .line 183
    return v0
.end method

.method public getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    return-object v0
.end method

.method public hasAnalyticsCookie()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasDocV1()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1:Z

    return v0
.end method

.method public hasDocV2()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2:Z

    return v0
.end method

.method public hasFooterHtml()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasFooterHtml:Z

    return v0
.end method

.method public hasUserReview()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 192
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :sswitch_0
    return-object p0

    .line 202
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;-><init>()V

    .line 203
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setDocV1(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 208
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 212
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;-><init>()V

    .line 213
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setUserReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 218
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 219
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setDocV2(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 224
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setDocV1(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 24
    return-object p0
.end method

.method public setDocV2(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 44
    return-object p0
.end method

.method public setFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasFooterHtml:Z

    .line 97
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->footerHtml_:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setUserReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview:Z

    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 81
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
    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasFooterHtml()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getFooterHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_4
    return-void
.end method
