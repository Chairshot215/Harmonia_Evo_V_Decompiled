.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLatency:Z

.field private hasNumChars:Z

.field private hasSource:Z

.field private hasType:Z

.field private latency_:I

.field private numChars_:I

.field private source_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 703
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    .line 720
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    .line 754
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    .line 692
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSerializedSize()I

    .line 805
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    return v0
.end method

.method public getNumChars()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getLatency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getNumChars()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    :cond_3
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    .line 827
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency:Z

    return v0
.end method

.method public hasNumChars()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType:Z

    return v0
.end method

.method public setLatency(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency:Z

    .line 725
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    .line 726
    return-object p0
.end method

.method public setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars:Z

    .line 759
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    .line 760
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource:Z

    .line 742
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    .line 743
    return-object p0
.end method

.method public setType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType:Z

    .line 708
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    .line 709
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
    .line 785
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getLatency()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 792
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 795
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getNumChars()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 797
    :cond_3
    return-void
.end method
