.class public final Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateRating"
.end annotation


# instance fields
.field private bayesianMeanRating_:D

.field private cachedSize:I

.field private commentCount_:J

.field private fiveStarRatings_:J

.field private fourStarRatings_:J

.field private hasBayesianMeanRating:Z

.field private hasCommentCount:Z

.field private hasFiveStarRatings:Z

.field private hasFourStarRatings:Z

.field private hasOneStarRatings:Z

.field private hasRatingsCount:Z

.field private hasStarRating:Z

.field private hasThreeStarRatings:Z

.field private hasThumbsDownCount:Z

.field private hasThumbsUpCount:Z

.field private hasTwoStarRatings:Z

.field private hasType:Z

.field private oneStarRatings_:J

.field private ratingsCount_:J

.field private starRating_:F

.field private threeStarRatings_:J

.field private thumbsDownCount_:J

.field private thumbsUpCount_:J

.field private twoStarRatings_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 156
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 173
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    .line 190
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 207
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 224
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 241
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 258
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    .line 292
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 309
    iput-wide v2, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 112
    return-void
.end method


# virtual methods
.method public getBayesianMeanRating()D
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    if-gez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getSerializedSize()I

    .line 393
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    return v0
.end method

.method public getCommentCount()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    return-wide v0
.end method

.method public getFiveStarRatings()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    return-wide v0
.end method

.method public getFourStarRatings()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    return-wide v0
.end method

.method public getOneStarRatings()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    return-wide v0
.end method

.method public getRatingsCount()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 416
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 420
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 428
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 432
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 436
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 440
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getCommentCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 444
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getBayesianMeanRating()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_b
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 448
    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    return v0
.end method

.method public getThreeStarRatings()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    return-wide v0
.end method

.method public getThumbsDownCount()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    return-wide v0
.end method

.method public getThumbsUpCount()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    return-wide v0
.end method

.method public getTwoStarRatings()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    return v0
.end method

.method public hasBayesianMeanRating()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount:Z

    return v0
.end method

.method public hasFiveStarRatings()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    return v0
.end method

.method public hasFourStarRatings()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    return v0
.end method

.method public hasOneStarRatings()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    return v0
.end method

.method public hasRatingsCount()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    return v0
.end method

.method public hasStarRating()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    return v0
.end method

.method public hasThreeStarRatings()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    return v0
.end method

.method public hasThumbsDownCount()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    return v0
.end method

.method public hasThumbsUpCount()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    return v0
.end method

.method public hasTwoStarRatings()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 457
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    :sswitch_0
    return-object p0

    .line 467
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 471
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 475
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 479
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 483
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 487
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 491
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 495
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 499
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 503
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 507
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setCommentCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 511
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setBayesianMeanRating(D)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x61 -> :sswitch_c
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
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    return-object v0
.end method

.method public setBayesianMeanRating(D)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    .line 280
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->bayesianMeanRating_:D

    .line 281
    return-object p0
.end method

.method public setCommentCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount:Z

    .line 178
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->commentCount_:J

    .line 179
    return-object p0
.end method

.method public setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    .line 263
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 264
    return-object p0
.end method

.method public setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    .line 246
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 247
    return-object p0
.end method

.method public setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    .line 195
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 196
    return-object p0
.end method

.method public setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    .line 161
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 162
    return-object p0
.end method

.method public setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    .line 144
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 145
    return-object p0
.end method

.method public setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    .line 229
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 230
    return-object p0
.end method

.method public setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    .line 314
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 315
    return-object p0
.end method

.method public setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    .line 297
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 298
    return-object p0
.end method

.method public setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    .line 212
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 213
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    .line 127
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 128
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
    .line 348
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 364
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 366
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 372
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 375
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 378
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 379
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getCommentCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 381
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasBayesianMeanRating()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getBayesianMeanRating()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 384
    :cond_b
    return-void
.end method
