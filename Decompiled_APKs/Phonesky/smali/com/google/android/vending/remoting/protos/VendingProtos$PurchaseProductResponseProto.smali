.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseProductResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasItemDescription:Z

.field private hasItemTitle:Z

.field private hasMerchantField:Z

.field private hasTitle:Z

.field private itemDescription_:Ljava/lang/String;

.field private itemTitle_:Ljava/lang/String;

.field private merchantField_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9468
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->title_:Ljava/lang/String;

    .line 9490
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemTitle_:Ljava/lang/String;

    .line 9507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemDescription_:Ljava/lang/String;

    .line 9524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->merchantField_:Ljava/lang/String;

    .line 9568
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->cachedSize:I

    .line 9468
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9571
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9573
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getSerializedSize()I

    .line 9575
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->cachedSize:I

    return v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9508
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9491
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->merchantField_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9580
    const/4 v0, 0x0

    .line 9581
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9582
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9585
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9586
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getItemTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9589
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9590
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getItemDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9593
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasMerchantField()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9594
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getMerchantField()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9597
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->cachedSize:I

    .line 9598
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9474
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasItemDescription()Z
    .locals 1

    .prologue
    .line 9509
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemDescription:Z

    return v0
.end method

.method public hasItemTitle()Z
    .locals 1

    .prologue
    .line 9492
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemTitle:Z

    return v0
.end method

.method public hasMerchantField()Z
    .locals 1

    .prologue
    .line 9526
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasMerchantField:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 9475
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9606
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9607
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9611
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9612
    :sswitch_0
    return-object p0

    .line 9617
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    goto :goto_0

    .line 9621
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->setItemTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    goto :goto_0

    .line 9625
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->setItemDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    goto :goto_0

    .line 9629
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->setMerchantField(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    goto :goto_0

    .line 9607
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
    .line 9466
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setItemDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemDescription:Z

    .line 9512
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemDescription_:Ljava/lang/String;

    .line 9513
    return-object p0
.end method

.method public setItemTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemTitle:Z

    .line 9495
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->itemTitle_:Ljava/lang/String;

    .line 9496
    return-object p0
.end method

.method public setMerchantField(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasMerchantField:Z

    .line 9529
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->merchantField_:Ljava/lang/String;

    .line 9530
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasTitle:Z

    .line 9478
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->title_:Ljava/lang/String;

    .line 9479
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
    .line 9554
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9555
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9557
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9558
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9560
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasItemDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9561
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getItemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9563
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->hasMerchantField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9564
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;->getMerchantField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9566
    :cond_3
    return-void
.end method
