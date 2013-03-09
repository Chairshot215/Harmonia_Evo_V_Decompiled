.class public final Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionTerms"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRecurringPeriod:Z

.field private hasTrialPeriod:Z

.field private recurringPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

.field private trialPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1687
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1692
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->recurringPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    .line 1712
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->trialPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    .line 1751
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->cachedSize:I

    .line 1687
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1754
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->cachedSize:I

    if-gez v0, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getSerializedSize()I

    .line 1758
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->cachedSize:I

    return v0
.end method

.method public getRecurringPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->recurringPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1763
    const/4 v0, 0x0

    .line 1764
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasRecurringPeriod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getRecurringPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1768
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasTrialPeriod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1769
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getTrialPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1772
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->cachedSize:I

    .line 1773
    return v0
.end method

.method public getTrialPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->trialPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    return-object v0
.end method

.method public hasRecurringPeriod()Z
    .locals 1

    .prologue
    .line 1693
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasRecurringPeriod:Z

    return v0
.end method

.method public hasTrialPeriod()Z
    .locals 1

    .prologue
    .line 1713
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasTrialPeriod:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1782
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1786
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1787
    :sswitch_0
    return-object p0

    .line 1792
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;-><init>()V

    .line 1793
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1794
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->setRecurringPeriod(Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    goto :goto_0

    .line 1798
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;-><init>()V

    .line 1799
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1800
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->setTrialPeriod(Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    goto :goto_0

    .line 1782
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1684
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v0

    return-object v0
.end method

.method public setRecurringPeriod(Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    .locals 1
    .parameter "value"

    .prologue
    .line 1696
    if-nez p1, :cond_0

    .line 1697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1699
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasRecurringPeriod:Z

    .line 1700
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->recurringPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    .line 1701
    return-object p0
.end method

.method public setTrialPeriod(Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;)Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    .locals 1
    .parameter "value"

    .prologue
    .line 1716
    if-nez p1, :cond_0

    .line 1717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1719
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasTrialPeriod:Z

    .line 1720
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->trialPeriod_:Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    .line 1721
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
    .line 1743
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasRecurringPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getRecurringPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1746
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->hasTrialPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;->getTrialPeriod()Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1749
    :cond_1
    return-void
.end method
