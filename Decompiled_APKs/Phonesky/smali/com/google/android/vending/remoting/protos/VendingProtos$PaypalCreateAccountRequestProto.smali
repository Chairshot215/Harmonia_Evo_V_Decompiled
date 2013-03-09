.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCreateAccountRequestProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private birthDate_:Ljava/lang/String;

.field private cachedSize:I

.field private firstName_:Ljava/lang/String;

.field private hasAddress:Z

.field private hasBirthDate:Z

.field private hasFirstName:Z

.field private hasLastName:Z

.field private lastName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10071
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    .line 10093
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    .line 10110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    .line 10177
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    .line 10071
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1

    .prologue
    .line 10112
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10131
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10180
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10182
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getSerializedSize()I

    .line 10184
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10077
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10094
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10189
    const/4 v0, 0x0

    .line 10190
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10191
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10194
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10195
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10198
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10199
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10202
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10203
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getBirthDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10206
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->cachedSize:I

    .line 10207
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 10111
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress:Z

    return v0
.end method

.method public hasBirthDate()Z
    .locals 1

    .prologue
    .line 10132
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate:Z

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 10078
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName:Z

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 10095
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10216
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10220
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10221
    :sswitch_0
    return-object p0

    .line 10226
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setFirstName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10230
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setLastName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10234
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10235
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10236
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10240
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->setBirthDate(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    goto :goto_0

    .line 10216
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
    .line 10069
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10114
    if-nez p1, :cond_0

    .line 10115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress:Z

    .line 10118
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10119
    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate:Z

    .line 10135
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->birthDate_:Ljava/lang/String;

    .line 10136
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName:Z

    .line 10081
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->firstName_:Ljava/lang/String;

    .line 10082
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName:Z

    .line 10098
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->lastName_:Ljava/lang/String;

    .line 10099
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
    .line 10163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10164
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10166
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10167
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10169
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10170
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10172
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->hasBirthDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10173
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;->getBirthDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10175
    :cond_3
    return-void
.end method
