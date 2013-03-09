.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAppPatchData"
.end annotation


# instance fields
.field private baseSignature_:Ljava/lang/String;

.field private baseVersionCode_:I

.field private cachedSize:I

.field private downloadUrl_:Ljava/lang/String;

.field private hasBaseSignature:Z

.field private hasBaseVersionCode:Z

.field private hasDownloadUrl:Z

.field private hasMaxPatchSize:Z

.field private hasPatchFormat:Z

.field private maxPatchSize_:J

.field private patchFormat_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseVersionCode_:I

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseSignature_:Ljava/lang/String;

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->downloadUrl_:Ljava/lang/String;

    .line 534
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->patchFormat_:I

    .line 551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->maxPatchSize_:J

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->cachedSize:I

    .line 478
    return-void
.end method


# virtual methods
.method public getBaseSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseSignature_:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseVersionCode()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseVersionCode_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->cachedSize:I

    if-gez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getSerializedSize()I

    .line 607
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->cachedSize:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPatchSize()J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->maxPatchSize_:J

    return-wide v0
.end method

.method public getPatchFormat()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->patchFormat_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseVersionCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasDownloadUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasPatchFormat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getPatchFormat()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasMaxPatchSize()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getMaxPatchSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->cachedSize:I

    .line 634
    return v0
.end method

.method public hasBaseSignature()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseSignature:Z

    return v0
.end method

.method public hasBaseVersionCode()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseVersionCode:Z

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasDownloadUrl:Z

    return v0
.end method

.method public hasMaxPatchSize()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasMaxPatchSize:Z

    return v0
.end method

.method public hasPatchFormat()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasPatchFormat:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 643
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    :sswitch_0
    return-object p0

    .line 653
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->setBaseVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    goto :goto_0

    .line 657
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->setBaseSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    goto :goto_0

    .line 661
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    goto :goto_0

    .line 665
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->setPatchFormat(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    goto :goto_0

    .line 669
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->setMaxPatchSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    goto :goto_0

    .line 643
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 475
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v0

    return-object v0
.end method

.method public setBaseSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1
    .parameter "value"

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseSignature:Z

    .line 505
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseSignature_:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public setBaseVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1
    .parameter "value"

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseVersionCode:Z

    .line 488
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->baseVersionCode_:I

    .line 489
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1
    .parameter "value"

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasDownloadUrl:Z

    .line 522
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->downloadUrl_:Ljava/lang/String;

    .line 523
    return-object p0
.end method

.method public setMaxPatchSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1
    .parameter "value"

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasMaxPatchSize:Z

    .line 556
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->maxPatchSize_:J

    .line 557
    return-object p0
.end method

.method public setPatchFormat(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1
    .parameter "value"

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasPatchFormat:Z

    .line 539
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->patchFormat_:I

    .line 540
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
    .line 583
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseVersionCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasBaseSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasPatchFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getPatchFormat()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->hasMaxPatchSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getMaxPatchSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 598
    :cond_4
    return-void
.end method
