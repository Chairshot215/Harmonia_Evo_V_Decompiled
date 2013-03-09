.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;,
        Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    }
.end annotation


# instance fields
.field private altTextLocalized_:Ljava/lang/String;

.field private cachedSize:I

.field private citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

.field private dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private hasAltTextLocalized:Z

.field private hasCitation:Z

.field private hasDimension:Z

.field private hasImageType:Z

.field private hasImageUrl:Z

.field private hasPositionInSequence:Z

.field private hasSecureUrl:Z

.field private hasSupportsFifeUrlOptions:Z

.field private imageType_:I

.field private imageUrl_:Ljava/lang/String;

.field private positionInSequence_:I

.field private secureUrl_:Ljava/lang/String;

.field private supportsFifeUrlOptions_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 282
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 299
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    .line 316
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 387
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    .line 404
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAltTextLocalized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    if-gez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSerializedSize()I

    .line 478
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    return v0
.end method

.method public getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    return-object v0
.end method

.method public getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInSequence()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    return v0
.end method

.method public getSecureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 501
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 505
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getPositionInSequence()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 509
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 513
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_7
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 517
    return v0
.end method

.method public getSupportsFifeUrlOptions()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    return v0
.end method

.method public hasAltTextLocalized()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    return v0
.end method

.method public hasCitation()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation:Z

    return v0
.end method

.method public hasDimension()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    return v0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    return v0
.end method

.method public hasPositionInSequence()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence:Z

    return v0
.end method

.method public hasSecureUrl()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    return v0
.end method

.method public hasSupportsFifeUrlOptions()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 526
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    :sswitch_0
    return-object p0

    .line 536
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 540
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    .line 541
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 542
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 546
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 550
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 554
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 558
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setPositionInSequence(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 562
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setSupportsFifeUrlOptions(Z)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 566
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;-><init>()V

    .line 567
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setCitation(Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x13 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
        0x53 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    return-object v0
.end method

.method public setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    .line 375
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public setCitation(Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation:Z

    .line 412
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    .line 413
    return-object p0
.end method

.method public setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    .line 324
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 325
    return-object p0
.end method

.method public setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    .line 287
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 288
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    .line 341
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 342
    return-object p0
.end method

.method public setPositionInSequence(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence:Z

    .line 304
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    .line 305
    return-object p0
.end method

.method public setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    .line 358
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 359
    return-object p0
.end method

.method public setSupportsFifeUrlOptions(Z)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    .line 392
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    .line 393
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
    .line 445
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 458
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 460
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getPositionInSequence()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 463
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 466
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 469
    :cond_7
    return-void
.end method
