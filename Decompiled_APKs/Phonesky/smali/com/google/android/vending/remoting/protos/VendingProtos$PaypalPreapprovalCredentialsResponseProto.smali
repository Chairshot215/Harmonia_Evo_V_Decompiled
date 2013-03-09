.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalCredentialsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPaypalAccountKey:Z

.field private hasPaypalEmail:Z

.field private hasResultCode:Z

.field private paypalAccountKey_:Ljava/lang/String;

.field private paypalEmail_:Ljava/lang/String;

.field private resultCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10485
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10490
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    .line 10507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    .line 10524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 10565
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    .line 10485
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10568
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10570
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getSerializedSize()I

    .line 10572
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    return v0
.end method

.method public getPaypalAccountKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10508
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 10492
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10577
    const/4 v0, 0x0

    .line 10578
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10579
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10582
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10583
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10586
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10587
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10590
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->cachedSize:I

    .line 10591
    return v0
.end method

.method public hasPaypalAccountKey()Z
    .locals 1

    .prologue
    .line 10509
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey:Z

    return v0
.end method

.method public hasPaypalEmail()Z
    .locals 1

    .prologue
    .line 10526
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail:Z

    return v0
.end method

.method public hasResultCode()Z
    .locals 1

    .prologue
    .line 10491
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10599
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10600
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10604
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10605
    :sswitch_0
    return-object p0

    .line 10610
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10614
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setPaypalAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10618
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    goto :goto_0

    .line 10600
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
    .line 10483
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPaypalAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey:Z

    .line 10512
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalAccountKey_:Ljava/lang/String;

    .line 10513
    return-object p0
.end method

.method public setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail:Z

    .line 10529
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->paypalEmail_:Ljava/lang/String;

    .line 10530
    return-object p0
.end method

.method public setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode:Z

    .line 10495
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->resultCode_:I

    .line 10496
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
    .line 10554
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10555
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 10557
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalAccountKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10558
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalAccountKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10560
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->hasPaypalEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10561
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10563
    :cond_2
    return-void
.end method
