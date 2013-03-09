.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation


# instance fields
.field private cachedSize:I

.field private certificate_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private expiryTime_:J

.field private fingerprint_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasCertificate:Z

.field private hasExpiryTime:Z

.field private hasFingerprint:Z

.field private hasIssuer:Z

.field private hasParsedSuccessfully:Z

.field private hasStartTime:Z

.field private hasSubject:Z

.field private issuer_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private parsedSuccessfully_:Z

.field private startTime_:J

.field private subject_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 369
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 374
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully_:Z

    .line 408
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 425
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 442
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 459
    iput-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime_:J

    .line 476
    iput-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime_:J

    .line 532
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    .line 369
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    if-gez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getSerializedSize()I

    .line 539
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    return v0
.end method

.method public getCertificate()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime_:J

    return-wide v0
.end method

.method public getFingerprint()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getIssuer()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getParsedSuccessfully()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getCertificate()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getParsedSuccessfully()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getSubject()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getIssuer()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 562
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getFingerprint()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 566
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getExpiryTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 570
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getStartTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_6
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    .line 574
    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime_:J

    return-wide v0
.end method

.method public getSubject()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCertificate()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    return v0
.end method

.method public hasExpiryTime()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    return v0
.end method

.method public hasFingerprint()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    return v0
.end method

.method public hasIssuer()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    return v0
.end method

.method public hasParsedSuccessfully()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    return v0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 583
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    :sswitch_0
    return-object p0

    .line 593
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setCertificate(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 597
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setParsedSuccessfully(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 601
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setSubject(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 605
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setIssuer(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 609
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setFingerprint(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 613
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setExpiryTime(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 617
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->setStartTime(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    goto :goto_0

    .line 583
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    move-result-object v0

    return-object v0
.end method

.method public setCertificate(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    .line 379
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 380
    return-object p0
.end method

.method public setExpiryTime(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    .line 464
    iput-wide p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime_:J

    .line 465
    return-object p0
.end method

.method public setFingerprint(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    .line 447
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 448
    return-object p0
.end method

.method public setIssuer(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    .line 430
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 431
    return-object p0
.end method

.method public setParsedSuccessfully(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    .line 396
    iput-boolean p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully_:Z

    .line 397
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    .line 481
    iput-wide p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime_:J

    .line 482
    return-object p0
.end method

.method public setSubject(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    .locals 1
    .parameter "value"

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    .line 413
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 414
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
    .line 509
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getCertificate()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getParsedSuccessfully()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getSubject()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getIssuer()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getFingerprint()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 524
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getExpiryTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 528
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 530
    :cond_6
    return-void
.end method
