.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSubscriptionPeriod:Z

.field private subscriptionPeriod_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3632
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3637
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    .line 3669
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    .line 3632
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3672
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 3674
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSerializedSize()I

    .line 3676
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3681
    const/4 v0, 0x0

    .line 3682
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3683
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3686
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->cachedSize:I

    .line 3687
    return v0
.end method

.method public getSubscriptionPeriod()I
    .locals 1

    .prologue
    .line 3639
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    return v0
.end method

.method public hasSubscriptionPeriod()Z
    .locals 1

    .prologue
    .line 3638
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3696
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3700
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3701
    :sswitch_0
    return-object p0

    .line 3706
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->setSubscriptionPeriod(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    goto :goto_0

    .line 3696
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 3629
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public setSubscriptionPeriod(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod:Z

    .line 3642
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod_:I

    .line 3643
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
    .line 3664
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->hasSubscriptionPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3665
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3667
    :cond_0
    return-void
.end method
