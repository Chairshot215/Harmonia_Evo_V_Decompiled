.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingInstrumentStatus"
.end annotation


# instance fields
.field private apiVersion_:I

.field private associationRequired_:Z

.field private cachedSize:I

.field private carrierPasswordPrompt_:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

.field private carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

.field private deviceAssociation_:Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

.field private hasApiVersion:Z

.field private hasAssociationRequired:Z

.field private hasCarrierPasswordPrompt:Z

.field private hasCarrierTos:Z

.field private hasDeviceAssociation:Z

.field private hasName:Z

.field private hasPasswordRequired:Z

.field private name_:Ljava/lang/String;

.field private passwordRequired_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1497
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1502
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1522
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired_:Z

    .line 1539
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired_:Z

    .line 1556
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt_:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    .line 1576
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion_:I

    .line 1593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->name_:Ljava/lang/String;

    .line 1610
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation_:Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    .line 1669
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    .line 1497
    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1

    .prologue
    .line 1577
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion_:I

    return v0
.end method

.method public getAssociationRequired()Z
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1672
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 1674
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getSerializedSize()I

    .line 1676
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    return v0
.end method

.method public getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt_:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    return-object v0
.end method

.method public getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    return-object v0
.end method

.method public getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation_:Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordRequired()Z
    .locals 1

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1681
    const/4 v0, 0x0

    .line 1682
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1687
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1690
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1691
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getPasswordRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1694
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1695
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1698
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1699
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getApiVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1702
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1703
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1707
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    .line 1711
    return v0
.end method

.method public hasApiVersion()Z
    .locals 1

    .prologue
    .line 1578
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    return v0
.end method

.method public hasAssociationRequired()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    return v0
.end method

.method public hasCarrierPasswordPrompt()Z
    .locals 1

    .prologue
    .line 1557
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt:Z

    return v0
.end method

.method public hasCarrierTos()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos:Z

    return v0
.end method

.method public hasDeviceAssociation()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    return v0
.end method

.method public hasPasswordRequired()Z
    .locals 1

    .prologue
    .line 1541
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1719
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1720
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1724
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1725
    :sswitch_0
    return-object p0

    .line 1730
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 1731
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1732
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1736
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setAssociationRequired(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1740
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setPasswordRequired(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1744
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;-><init>()V

    .line 1745
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1746
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setCarrierPasswordPrompt(Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1750
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setApiVersion(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1754
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1758
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;-><init>()V

    .line 1759
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1760
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->setDeviceAssociation(Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    goto :goto_0

    .line 1720
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 1494
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    return-object v0
.end method

.method public setApiVersion(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    .line 1581
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion_:I

    .line 1582
    return-object p0
.end method

.method public setAssociationRequired(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    .line 1527
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired_:Z

    .line 1528
    return-object p0
.end method

.method public setCarrierPasswordPrompt(Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1560
    if-nez p1, :cond_0

    .line 1561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1563
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt:Z

    .line 1564
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt_:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    .line 1565
    return-object p0
.end method

.method public setCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1506
    if-nez p1, :cond_0

    .line 1507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1509
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos:Z

    .line 1510
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1511
    return-object p0
.end method

.method public setDeviceAssociation(Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1614
    if-nez p1, :cond_0

    .line 1615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1617
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation:Z

    .line 1618
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation_:Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    .line 1619
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    .line 1598
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->name_:Ljava/lang/String;

    .line 1599
    return-object p0
.end method

.method public setPasswordRequired(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    .line 1544
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired_:Z

    .line 1545
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
    .line 1646
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1649
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1652
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1653
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getPasswordRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1655
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1656
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1658
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1659
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getApiVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1661
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1662
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1664
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1665
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1667
    :cond_6
    return-void
.end method
