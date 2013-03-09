.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalMassageAddressResponseProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private cachedSize:I

.field private hasAddress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10742
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10782
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->cachedSize:I

    .line 10742
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1

    .prologue
    .line 10749
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10785
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10787
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->getSerializedSize()I

    .line 10789
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10794
    const/4 v0, 0x0

    .line 10795
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10796
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10799
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->cachedSize:I

    .line 10800
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 10748
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->hasAddress:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10808
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10809
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10813
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10814
    :sswitch_0
    return-object p0

    .line 10819
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10820
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10821
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    goto :goto_0

    .line 10809
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
    .line 10740
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10751
    if-nez p1, :cond_0

    .line 10752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10754
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->hasAddress:Z

    .line 10755
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10756
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
    .line 10777
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10778
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10780
    :cond_0
    return-void
.end method
