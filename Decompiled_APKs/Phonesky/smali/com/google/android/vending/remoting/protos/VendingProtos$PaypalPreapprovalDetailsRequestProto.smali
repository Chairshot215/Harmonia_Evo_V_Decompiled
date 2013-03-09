.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalDetailsRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private getAddress_:Z

.field private hasGetAddress:Z

.field private hasPreapprovalKey:Z

.field private preapprovalKey_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9815
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getAddress_:Z

    .line 9837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->preapprovalKey_:Ljava/lang/String;

    .line 9874
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->cachedSize:I

    .line 9815
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9877
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9879
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getSerializedSize()I

    .line 9881
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->cachedSize:I

    return v0
.end method

.method public getGetAddress()Z
    .locals 1

    .prologue
    .line 9821
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getAddress_:Z

    return v0
.end method

.method public getPreapprovalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9838
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->preapprovalKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9886
    const/4 v0, 0x0

    .line 9887
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasGetAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9888
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getGetAddress()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9891
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasPreapprovalKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9892
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9895
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->cachedSize:I

    .line 9896
    return v0
.end method

.method public hasGetAddress()Z
    .locals 1

    .prologue
    .line 9822
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasGetAddress:Z

    return v0
.end method

.method public hasPreapprovalKey()Z
    .locals 1

    .prologue
    .line 9839
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasPreapprovalKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9904
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9905
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9909
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9910
    :sswitch_0
    return-object p0

    .line 9915
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->setGetAddress(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    goto :goto_0

    .line 9919
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    goto :goto_0

    .line 9905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 9813
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setGetAddress(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasGetAddress:Z

    .line 9825
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getAddress_:Z

    .line 9826
    return-object p0
.end method

.method public setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasPreapprovalKey:Z

    .line 9842
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->preapprovalKey_:Ljava/lang/String;

    .line 9843
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
    .line 9866
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasGetAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9867
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getGetAddress()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9869
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->hasPreapprovalKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9870
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9872
    :cond_1
    return-void
.end method
