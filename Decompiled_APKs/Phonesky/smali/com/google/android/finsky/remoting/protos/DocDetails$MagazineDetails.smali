.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagazineDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private deliveryFrequencyDescription_:Ljava/lang/String;

.field private deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

.field private hasDeliveryFrequencyDescription:Z

.field private hasDeviceAvailabilityDescriptionHtml:Z

.field private hasParentDetailsUrl:Z

.field private hasPsvDescription:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private psvDescription_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3729
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 3751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    .line 3768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    .line 3785
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    .line 3829
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    .line 3729
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3832
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 3834
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getSerializedSize()I

    .line 3836
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    return v0
.end method

.method public getDeliveryFrequencyDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3786
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPsvDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3841
    const/4 v0, 0x0

    .line 3842
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3843
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3846
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3847
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3850
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3851
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3854
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3855
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3858
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    .line 3859
    return v0
.end method

.method public hasDeliveryFrequencyDescription()Z
    .locals 1

    .prologue
    .line 3787
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription:Z

    return v0
.end method

.method public hasDeviceAvailabilityDescriptionHtml()Z
    .locals 1

    .prologue
    .line 3753
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .locals 1

    .prologue
    .line 3736
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasPsvDescription()Z
    .locals 1

    .prologue
    .line 3770
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3868
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3872
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3873
    :sswitch_0
    return-object p0

    .line 3878
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3882
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setDeviceAvailabilityDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3886
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setPsvDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3890
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setDeliveryFrequencyDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3868
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 3726
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryFrequencyDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription:Z

    .line 3790
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    .line 3791
    return-object p0
.end method

.method public setDeviceAvailabilityDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    .line 3756
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    .line 3757
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl:Z

    .line 3739
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 3740
    return-object p0
.end method

.method public setPsvDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription:Z

    .line 3773
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    .line 3774
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
    .line 3815
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3816
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3818
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3819
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3821
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3822
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3824
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3825
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3827
    :cond_3
    return-void
.end method
