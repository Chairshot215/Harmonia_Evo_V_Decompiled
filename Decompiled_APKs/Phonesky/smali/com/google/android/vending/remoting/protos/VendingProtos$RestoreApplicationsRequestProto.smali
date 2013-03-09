.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreApplicationsRequestProto"
.end annotation


# instance fields
.field private backupAndroidId_:Ljava/lang/String;

.field private cachedSize:I

.field private deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

.field private hasBackupAndroidId:Z

.field private hasDeviceConfiguration:Z

.field private hasTosVersion:Z

.field private tosVersion_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17570
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    .line 17592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    .line 17609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 17657
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    .line 17570
    return-void
.end method


# virtual methods
.method public getBackupAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17576
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 17660
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 17662
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getSerializedSize()I

    .line 17664
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    return v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1

    .prologue
    .line 17611
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 17669
    const/4 v0, 0x0

    .line 17670
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17671
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getBackupAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17674
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17675
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getTosVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17678
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17679
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17682
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    .line 17683
    return v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17593
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBackupAndroidId()Z
    .locals 1

    .prologue
    .line 17577
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    return v0
.end method

.method public hasDeviceConfiguration()Z
    .locals 1

    .prologue
    .line 17610
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasTosVersion()Z
    .locals 1

    .prologue
    .line 17594
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17691
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17692
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 17696
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17697
    :sswitch_0
    return-object p0

    .line 17702
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17706
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17710
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;-><init>()V

    .line 17711
    .local v1, value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 17712
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17692
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
    .line 17568
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 17579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    .line 17580
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    .line 17581
    return-object p0
.end method

.method public setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 17613
    if-nez p1, :cond_0

    .line 17614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration:Z

    .line 17617
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 17618
    return-object p0
.end method

.method public setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 17596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    .line 17597
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    .line 17598
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
    .line 17646
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17647
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getBackupAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17649
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17650
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17652
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17653
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 17655
    :cond_2
    return-void
.end method
