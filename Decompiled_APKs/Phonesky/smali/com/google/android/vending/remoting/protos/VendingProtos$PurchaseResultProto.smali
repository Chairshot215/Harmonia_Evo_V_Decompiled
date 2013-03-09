.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseResultProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasResultCode:Z

.field private hasResultCodeMessage:Z

.field private resultCodeMessage_:Ljava/lang/String;

.field private resultCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7596
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7613
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    .line 7630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    .line 7666
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    .line 7596
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7669
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 7671
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getSerializedSize()I

    .line 7673
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 7615
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    return v0
.end method

.method public getResultCodeMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7631
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7678
    const/4 v0, 0x0

    .line 7679
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7680
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7683
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7684
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCodeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7687
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->cachedSize:I

    .line 7688
    return v0
.end method

.method public hasResultCode()Z
    .locals 1

    .prologue
    .line 7614
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode:Z

    return v0
.end method

.method public hasResultCodeMessage()Z
    .locals 1

    .prologue
    .line 7632
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7696
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7697
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7701
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7702
    :sswitch_0
    return-object p0

    .line 7707
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    goto :goto_0

    .line 7711
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->setResultCodeMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    goto :goto_0

    .line 7697
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
    .line 7594
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v0

    return-object v0
.end method

.method public setResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode:Z

    .line 7618
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCode_:I

    .line 7619
    return-object p0
.end method

.method public setResultCodeMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage:Z

    .line 7635
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->resultCodeMessage_:Ljava/lang/String;

    .line 7636
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
    .line 7658
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7659
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7661
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->hasResultCodeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7662
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCodeMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7664
    :cond_1
    return-void
.end method
