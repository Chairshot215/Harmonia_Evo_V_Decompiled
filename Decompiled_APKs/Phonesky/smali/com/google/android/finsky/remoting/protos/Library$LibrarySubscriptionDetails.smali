.class public final Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibrarySubscriptionDetails"
.end annotation


# instance fields
.field private autoRenewing_:Z

.field private cachedSize:I

.field private hasAutoRenewing:Z

.field private hasInitiationTimestampMsec:Z

.field private hasTrialUntilTimestampMsec:Z

.field private hasValidUntilTimestampMsec:Z

.field private initiationTimestampMsec_:J

.field private trialUntilTimestampMsec_:J

.field private validUntilTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 728
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 733
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 750
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 784
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 728
    return-void
.end method


# virtual methods
.method public getAutoRenewing()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getSerializedSize()I

    .line 835
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    return v0
.end method

.method public getInitiationTimestampMsec()J
    .locals 2

    .prologue
    .line 734
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 850
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 854
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getTrialUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 857
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 858
    return v0
.end method

.method public getTrialUntilTimestampMsec()J
    .locals 2

    .prologue
    .line 785
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    return-wide v0
.end method

.method public getValidUntilTimestampMsec()J
    .locals 2

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    return-wide v0
.end method

.method public hasAutoRenewing()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    return v0
.end method

.method public hasInitiationTimestampMsec()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    return v0
.end method

.method public hasTrialUntilTimestampMsec()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec:Z

    return v0
.end method

.method public hasValidUntilTimestampMsec()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 867
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 871
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    :sswitch_0
    return-object p0

    .line 877
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 881
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 885
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 889
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setTrialUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 867
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 725
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    .line 772
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 773
    return-object p0
.end method

.method public setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    .line 738
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 739
    return-object p0
.end method

.method public setTrialUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec:Z

    .line 789
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    .line 790
    return-object p0
.end method

.method public setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec:Z

    .line 755
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 756
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
    .line 814
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 823
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 824
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getTrialUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 826
    :cond_3
    return-void
.end method
