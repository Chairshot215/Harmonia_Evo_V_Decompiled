.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadata"
.end annotation


# instance fields
.field private cachedSize:I

.field private fileType_:I

.field private hasFileType:Z

.field private hasSize:Z

.field private hasVersionCode:Z

.field private size_:J

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 468
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    .line 485
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    .line 502
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    .line 542
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    .line 458
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSerializedSize()I

    .line 549
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getFileType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->cachedSize:I

    .line 568
    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType:Z

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 577
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    :sswitch_0
    return-object p0

    .line 587
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setFileType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 591
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 595
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->setSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    goto :goto_0

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setFileType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType:Z

    .line 473
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->fileType_:I

    .line 474
    return-object p0
.end method

.method public setSize(J)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize:Z

    .line 507
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->size_:J

    .line 508
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    .line 490
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->versionCode_:I

    .line 491
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
    .line 531
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getFileType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 540
    :cond_2
    return-void
.end method
