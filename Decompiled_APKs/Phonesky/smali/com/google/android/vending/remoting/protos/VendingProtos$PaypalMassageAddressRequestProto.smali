.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalMassageAddressRequestProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private cachedSize:I

.field private hasAddress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10640
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    .line 10640
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1

    .prologue
    .line 10647
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10684
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10686
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getSerializedSize()I

    .line 10688
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10693
    const/4 v0, 0x0

    .line 10694
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10695
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10698
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->cachedSize:I

    .line 10699
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 10646
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10707
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10708
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10712
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10713
    :sswitch_0
    return-object p0

    .line 10718
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10719
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10720
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    goto :goto_0

    .line 10708
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 10638
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10649
    if-nez p1, :cond_0

    .line 10650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10652
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress:Z

    .line 10653
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10654
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
    .line 10676
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10677
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10679
    :cond_0
    return-void
.end method
