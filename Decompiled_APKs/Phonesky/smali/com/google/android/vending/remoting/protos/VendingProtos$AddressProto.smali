.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressProto"
.end annotation


# instance fields
.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasAddress1:Z

.field private hasAddress2:Z

.field private hasCity:Z

.field private hasCountry:Z

.field private hasName:Z

.field private hasPhone:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private hasType:Z

.field private name_:Ljava/lang/String;

.field private phone_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20998
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    .line 21020
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    .line 21037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    .line 21054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    .line 21071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    .line 21088
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    .line 21105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    .line 21122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    .line 21139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    .line 21203
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    .line 20998
    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21004
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21021
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 21206
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 21208
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getSerializedSize()I

    .line 21210
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21038
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21089
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21106
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21140
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21072
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 21215
    const/4 v0, 0x0

    .line 21216
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21217
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21220
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21221
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21224
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21225
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21228
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21229
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21232
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21233
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21236
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21237
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21240
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21241
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21244
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21245
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21248
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21249
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21252
    :cond_8
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->cachedSize:I

    .line 21253
    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21055
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21123
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress1()Z
    .locals 1

    .prologue
    .line 21005
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .locals 1

    .prologue
    .line 21022
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2:Z

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 21039
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 21090
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 21107
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName:Z

    return v0
.end method

.method public hasPhone()Z
    .locals 1

    .prologue
    .line 21141
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone:Z

    return v0
.end method

.method public hasPostalCode()Z
    .locals 1

    .prologue
    .line 21073
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 21056
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 21124
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 21262
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 21266
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21267
    :sswitch_0
    return-object p0

    .line 21272
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21276
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21280
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21284
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21288
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21292
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21296
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21300
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21304
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    goto :goto_0

    .line 21262
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 20996
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1:Z

    .line 21008
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address1_:Ljava/lang/String;

    .line 21009
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2:Z

    .line 21025
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->address2_:Ljava/lang/String;

    .line 21026
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity:Z

    .line 21042
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->city_:Ljava/lang/String;

    .line 21043
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry:Z

    .line 21093
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->country_:Ljava/lang/String;

    .line 21094
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName:Z

    .line 21110
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->name_:Ljava/lang/String;

    .line 21111
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone:Z

    .line 21144
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->phone_:Ljava/lang/String;

    .line 21145
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode:Z

    .line 21076
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->postalCode_:Ljava/lang/String;

    .line 21077
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState:Z

    .line 21059
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->state_:Ljava/lang/String;

    .line 21060
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType:Z

    .line 21127
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->type_:Ljava/lang/String;

    .line 21128
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
    .line 21174
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21175
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21177
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasAddress2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21178
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21180
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21181
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21183
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21184
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21186
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21187
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21189
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21190
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21192
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21193
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21195
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21196
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21198
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21199
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21201
    :cond_8
    return-void
.end method
