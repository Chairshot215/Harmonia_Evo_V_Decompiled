.class public final Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UploadDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadDeviceConfigRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private deviceConfiguration_:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

.field private gcmRegistrationId_:Ljava/lang/String;

.field private hasDeviceConfiguration:Z

.field private hasGcmRegistrationId:Z

.field private hasManufacturer:Z

.field private manufacturer_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration_:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId_:Ljava/lang/String;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getSerializedSize()I

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    return v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration_:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    return-object v0
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasDeviceConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getDeviceConfiguration()Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    .line 121
    return v0
.end method

.method public hasDeviceConfiguration()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasGcmRegistrationId()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    return v0
.end method

.method public hasManufacturer()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 130
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :sswitch_0
    return-object p0

    .line 140
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;-><init>()V

    .line 141
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->setDeviceConfiguration(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    goto :goto_0

    .line 146
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->setManufacturer(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    goto :goto_0

    .line 150
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->setGcmRegistrationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    goto :goto_0

    .line 130
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceConfiguration(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasDeviceConfiguration:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration_:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 24
    return-object p0
.end method

.method public setGcmRegistrationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId_:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer_:Ljava/lang/String;

    .line 41
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
    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasDeviceConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getDeviceConfiguration()Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 93
    :cond_2
    return-void
.end method
