.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryMutation"
.end annotation


# instance fields
.field private appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

.field private cachedSize:I

.field private deleted_:Z

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentHash_:J

.field private hasAppDetails:Z

.field private hasDeleted:Z

.field private hasDocid:Z

.field private hasDocumentHash:Z

.field private hasInAppDetails:Z

.field private hasOfferType:Z

.field private hasSubscriptionDetails:Z

.field private inAppDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

.field private offerType_:I

.field private subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 284
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    .line 355
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    .line 375
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    .line 395
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->inAppDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    .line 279
    return-void
.end method


# virtual methods
.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    if-gez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSerializedSize()I

    .line 464
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    return v0
.end method

.method public getDeleted()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    return v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentHash()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    return-wide v0
.end method

.method public getInAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->inAppDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getOfferType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocumentHash()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 491
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasInAppDetails()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 495
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getInAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    .line 499
    return v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    return-object v0
.end method

.method public hasAppDetails()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails:Z

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid:Z

    return v0
.end method

.method public hasDocumentHash()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash:Z

    return v0
.end method

.method public hasInAppDetails()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasInAppDetails:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType:Z

    return v0
.end method

.method public hasSubscriptionDetails()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 508
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 512
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    :sswitch_0
    return-object p0

    .line 518
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 519
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 520
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 524
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 528
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDocumentHash(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 532
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDeleted(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 536
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;-><init>()V

    .line 537
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 538
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 542
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;-><init>()V

    .line 543
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 544
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 548
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;-><init>()V

    .line 549
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 550
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setInAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 276
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    move-result-object v0

    return-object v0
.end method

.method public setAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails:Z

    .line 363
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    .line 364
    return-object p0
.end method

.method public setDeleted(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted:Z

    .line 343
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    .line 344
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid:Z

    .line 292
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 293
    return-object p0
.end method

.method public setDocumentHash(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash:Z

    .line 326
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    .line 327
    return-object p0
.end method

.method public setInAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasInAppDetails:Z

    .line 403
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->inAppDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    .line 404
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType:Z

    .line 309
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    .line 310
    return-object p0
.end method

.method public setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .locals 1
    .parameter "value"

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails:Z

    .line 383
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    .line 384
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
    .line 434
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getOfferType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocumentHash()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 452
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasInAppDetails()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getInAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 455
    :cond_6
    return-void
.end method
