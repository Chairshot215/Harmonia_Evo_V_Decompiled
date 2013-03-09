.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalDetailsResponseProto"
.end annotation


# instance fields
.field private address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

.field private cachedSize:I

.field private hasAddress:Z

.field private hasPaypalEmail:Z

.field private paypalEmail_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9941
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 9963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 10002
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->cachedSize:I

    .line 9941
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    .locals 1

    .prologue
    .line 9965
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10005
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10007
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->getSerializedSize()I

    .line 10009
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->cachedSize:I

    return v0
.end method

.method public getPaypalEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9947
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->paypalEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10014
    const/4 v0, 0x0

    .line 10015
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasPaypalEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10016
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10019
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10020
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10023
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->cachedSize:I

    .line 10024
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 9964
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasAddress:Z

    return v0
.end method

.method public hasPaypalEmail()Z
    .locals 1

    .prologue
    .line 9948
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasPaypalEmail:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10032
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10033
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10037
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10038
    :sswitch_0
    return-object p0

    .line 10043
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    goto :goto_0

    .line 10047
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;-><init>()V

    .line 10048
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10049
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    goto :goto_0

    .line 10033
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 9939
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9967
    if-nez p1, :cond_0

    .line 9968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9970
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasAddress:Z

    .line 9971
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->address_:Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    .line 9972
    return-object p0
.end method

.method public setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasPaypalEmail:Z

    .line 9951
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 9952
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
    .line 9994
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasPaypalEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9995
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9997
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9998
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;->getAddress()Lcom/google/android/vending/remoting/protos/VendingProtos$AddressProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10000
    :cond_1
    return-void
.end method
