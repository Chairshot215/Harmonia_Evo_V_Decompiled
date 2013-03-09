.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCarrierInfoResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private carrierChannelEnabled_:Z

.field private carrierImageDensity_:I

.field private carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private carrierSubtitle_:Ljava/lang/String;

.field private carrierTitle_:Ljava/lang/String;

.field private hasCarrierBanner:Z

.field private hasCarrierChannelEnabled:Z

.field private hasCarrierImageDensity:Z

.field private hasCarrierLogoIcon:Z

.field private hasCarrierSubtitle:Z

.field private hasCarrierTitle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16484
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    .line 16506
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16523
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    .line 16557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    .line 16574
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    .line 16627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    .line 16484
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 16630
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 16632
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getSerializedSize()I

    .line 16634
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    return v0
.end method

.method public getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 16524
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCarrierChannelEnabled()Z
    .locals 1

    .prologue
    .line 16490
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    return v0
.end method

.method public getCarrierImageDensity()I
    .locals 1

    .prologue
    .line 16575
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    return v0
.end method

.method public getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 16507
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCarrierSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16541
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16558
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 16639
    const/4 v0, 0x0

    .line 16640
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16641
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierChannelEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16644
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16645
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16648
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16649
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16652
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16653
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16656
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16657
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16660
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16661
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierImageDensity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16664
    :cond_5
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    .line 16665
    return v0
.end method

.method public hasCarrierBanner()Z
    .locals 1

    .prologue
    .line 16525
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner:Z

    return v0
.end method

.method public hasCarrierChannelEnabled()Z
    .locals 1

    .prologue
    .line 16491
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled:Z

    return v0
.end method

.method public hasCarrierImageDensity()Z
    .locals 1

    .prologue
    .line 16576
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity:Z

    return v0
.end method

.method public hasCarrierLogoIcon()Z
    .locals 1

    .prologue
    .line 16508
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon:Z

    return v0
.end method

.method public hasCarrierSubtitle()Z
    .locals 1

    .prologue
    .line 16542
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle:Z

    return v0
.end method

.method public hasCarrierTitle()Z
    .locals 1

    .prologue
    .line 16559
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16674
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 16678
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16679
    :sswitch_0
    return-object p0

    .line 16684
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierChannelEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16688
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierLogoIcon(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16692
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierBanner(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16696
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierSubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16700
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16704
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16674
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 16482
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierBanner(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner:Z

    .line 16528
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16529
    return-object p0
.end method

.method public setCarrierChannelEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled:Z

    .line 16494
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    .line 16495
    return-object p0
.end method

.method public setCarrierImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity:Z

    .line 16579
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    .line 16580
    return-object p0
.end method

.method public setCarrierLogoIcon(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon:Z

    .line 16511
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16512
    return-object p0
.end method

.method public setCarrierSubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle:Z

    .line 16545
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    .line 16546
    return-object p0
.end method

.method public setCarrierTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle:Z

    .line 16562
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    .line 16563
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
    .line 16607
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16608
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierChannelEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16610
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16611
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 16613
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16614
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 16616
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16617
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16619
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16620
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16622
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16623
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierImageDensity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16625
    :cond_5
    return-void
.end method
