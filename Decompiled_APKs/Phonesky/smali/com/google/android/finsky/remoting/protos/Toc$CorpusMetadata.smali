.class public final Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CorpusMetadata"
.end annotation


# instance fields
.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasLandingUrl:Z

.field private hasLibraryName:Z

.field private hasName:Z

.field private landingUrl_:Ljava/lang/String;

.field private libraryName_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 433
    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getSerializedSize()I

    .line 541
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    return v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 564
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    return v0
.end method

.method public hasLandingUrl()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    return v0
.end method

.method public hasLibraryName()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 573
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    :sswitch_0
    return-object p0

    .line 583
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 587
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 591
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 595
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 430
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    .line 443
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 444
    return-object p0
.end method

.method public setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    .line 477
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 478
    return-object p0
.end method

.method public setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    .line 494
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 495
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    .line 460
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 461
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
    .line 520
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 532
    :cond_3
    return-void
.end method
