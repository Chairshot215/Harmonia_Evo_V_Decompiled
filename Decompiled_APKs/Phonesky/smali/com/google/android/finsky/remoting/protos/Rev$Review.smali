.class public final Lcom/google/android/finsky/remoting/protos/Rev$Review;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Review"
.end annotation


# instance fields
.field private authorName_:Ljava/lang/String;

.field private cachedSize:I

.field private commentId_:Ljava/lang/String;

.field private comment_:Ljava/lang/String;

.field private deviceName_:Ljava/lang/String;

.field private documentVersion_:Ljava/lang/String;

.field private hasAuthorName:Z

.field private hasComment:Z

.field private hasCommentId:Z

.field private hasDeviceName:Z

.field private hasDocumentVersion:Z

.field private hasPlusProfile:Z

.field private hasReplyText:Z

.field private hasReplyTimestampMsec:Z

.field private hasSource:Z

.field private hasStarRating:Z

.field private hasTimestampMsec:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

.field private replyText_:Ljava/lang/String;

.field private replyTimestampMsec_:J

.field private source_:Ljava/lang/String;

.field private starRating_:I

.field private timestampMsec_:J

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 202
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    if-gez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSerializedSize()I

    .line 312
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    return-object v0
.end method

.method public getReplyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTimestampMsec()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 347
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 355
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 359
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 363
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasPlusProfile()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 367
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_c
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 371
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    return v0
.end method

.method public getTimestampMsec()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    return v0
.end method

.method public hasCommentId()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    return v0
.end method

.method public hasDeviceName()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    return v0
.end method

.method public hasDocumentVersion()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    return v0
.end method

.method public hasPlusProfile()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasPlusProfile:Z

    return v0
.end method

.method public hasReplyText()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    return v0
.end method

.method public hasReplyTimestampMsec()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    return v0
.end method

.method public hasStarRating()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    return v0
.end method

.method public hasTimestampMsec()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 380
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    :sswitch_0
    return-object p0

    .line 390
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 394
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 398
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 402
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 406
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 410
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 414
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 418
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 422
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 426
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 430
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 434
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 438
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;-><init>()V

    .line 439
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 440
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setPlusProfile(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x9a -> :sswitch_a
        0xea -> :sswitch_b
        0xf0 -> :sswitch_c
        0xfa -> :sswitch_d
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    .line 156
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName:Z

    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->deviceName_:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setPlusProfile(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasPlusProfile:Z

    .line 227
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 228
    return-object p0
.end method

.method public setReplyText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText:Z

    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyText_:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setReplyTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec:Z

    .line 207
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->replyTimestampMsec_:J

    .line 208
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    .line 105
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 106
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    .line 88
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 89
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 38
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
    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 279
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 282
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 285
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 286
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 291
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 292
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 295
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 297
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 300
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasPlusProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 301
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 303
    :cond_c
    return-void
.end method
