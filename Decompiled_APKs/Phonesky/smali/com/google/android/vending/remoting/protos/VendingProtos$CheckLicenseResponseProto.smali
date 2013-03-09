.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckLicenseResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasResponseCode:Z

.field private hasSignature:Z

.field private hasSignedData:Z

.field private responseCode_:I

.field private signature_:Ljava/lang/String;

.field private signedData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15033
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15038
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    .line 15055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    .line 15072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    .line 15115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    .line 15033
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 15118
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 15120
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSerializedSize()I

    .line 15122
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    return v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 15039
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 15127
    const/4 v0, 0x0

    .line 15128
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15129
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15133
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15136
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15137
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15140
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->cachedSize:I

    .line 15141
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15073
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15056
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 15040
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 15074
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature:Z

    return v0
.end method

.method public hasSignedData()Z
    .locals 1

    .prologue
    .line 15057
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15150
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 15154
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15155
    :sswitch_0
    return-object p0

    .line 15160
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setResponseCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 15164
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 15168
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    goto :goto_0

    .line 15150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 15031
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode:Z

    .line 15043
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->responseCode_:I

    .line 15044
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature:Z

    .line 15077
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signature_:Ljava/lang/String;

    .line 15078
    return-object p0
.end method

.method public setSignedData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData:Z

    .line 15060
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->signedData_:Ljava/lang/String;

    .line 15061
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
    .line 15104
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15105
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15108
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15111
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15113
    :cond_2
    return-void
.end method
