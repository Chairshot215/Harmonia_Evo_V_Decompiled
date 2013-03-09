.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reason"
.end annotation


# instance fields
.field private briefReason_:Ljava/lang/String;

.field private cachedSize:I

.field private detailedReason_:Ljava/lang/String;

.field private hasBriefReason:Z

.field private hasDetailedReason:Z

.field private hasUniqueId:Z

.field private uniqueId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2552
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->briefReason_:Ljava/lang/String;

    .line 2574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->detailedReason_:Ljava/lang/String;

    .line 2591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->uniqueId_:Ljava/lang/String;

    .line 2631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->cachedSize:I

    .line 2552
    return-void
.end method


# virtual methods
.method public getBriefReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->briefReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2634
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->cachedSize:I

    if-gez v0, :cond_0

    .line 2636
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getSerializedSize()I

    .line 2638
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->cachedSize:I

    return v0
.end method

.method public getDetailedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->detailedReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2643
    const/4 v0, 0x0

    .line 2644
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasBriefReason()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2645
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getBriefReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2648
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasDetailedReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2649
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getDetailedReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2652
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasUniqueId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2653
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2656
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->cachedSize:I

    .line 2657
    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->uniqueId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBriefReason()Z
    .locals 1

    .prologue
    .line 2559
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasBriefReason:Z

    return v0
.end method

.method public hasDetailedReason()Z
    .locals 1

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasDetailedReason:Z

    return v0
.end method

.method public hasUniqueId()Z
    .locals 1

    .prologue
    .line 2593
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasUniqueId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2665
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2666
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2670
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2671
    :sswitch_0
    return-object p0

    .line 2676
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->setBriefReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    goto :goto_0

    .line 2680
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->setDetailedReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    goto :goto_0

    .line 2684
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->setUniqueId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    goto :goto_0

    .line 2666
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2549
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v0

    return-object v0
.end method

.method public setBriefReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .locals 1
    .parameter "value"

    .prologue
    .line 2561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasBriefReason:Z

    .line 2562
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->briefReason_:Ljava/lang/String;

    .line 2563
    return-object p0
.end method

.method public setDetailedReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .locals 1
    .parameter "value"

    .prologue
    .line 2578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasDetailedReason:Z

    .line 2579
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->detailedReason_:Ljava/lang/String;

    .line 2580
    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;
    .locals 1
    .parameter "value"

    .prologue
    .line 2595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasUniqueId:Z

    .line 2596
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->uniqueId_:Ljava/lang/String;

    .line 2597
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
    .line 2620
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasBriefReason()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2621
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getBriefReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2623
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasDetailedReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2624
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getDetailedReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2626
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->hasUniqueId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2627
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2629
    :cond_2
    return-void
.end method
