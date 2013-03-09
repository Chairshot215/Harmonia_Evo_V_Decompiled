.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentAddressSpec"
.end annotation


# instance fields
.field private billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

.field private cachedSize:I

.field private hasBillingAddressSpec:Z

.field private hasInstrumentFamily:Z

.field private instrumentFamily_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11957
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11962
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily_:I

    .line 11979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 12021
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    .line 11957
    return-void
.end method


# virtual methods
.method public getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 1

    .prologue
    .line 11981
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 12024
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    if-gez v0, :cond_0

    .line 12026
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->getSerializedSize()I

    .line 12028
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    return v0
.end method

.method public getInstrumentFamily()I
    .locals 1

    .prologue
    .line 11964
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 12033
    const/4 v0, 0x0

    .line 12034
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12035
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->getInstrumentFamily()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12038
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasBillingAddressSpec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12039
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12042
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    .line 12043
    return v0
.end method

.method public hasBillingAddressSpec()Z
    .locals 1

    .prologue
    .line 11980
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasBillingAddressSpec:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .locals 1

    .prologue
    .line 11963
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12051
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12052
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 12056
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12057
    :sswitch_0
    return-object p0

    .line 12062
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->setInstrumentFamily(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    goto :goto_0

    .line 12066
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    .line 12067
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 12068
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    goto :goto_0

    .line 12052
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x4a -> :sswitch_2
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
    .line 11955
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 11983
    if-nez p1, :cond_0

    .line 11984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11986
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasBillingAddressSpec:Z

    .line 11987
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 11988
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 11966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    .line 11967
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily_:I

    .line 11968
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
    .line 12013
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12014
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->getInstrumentFamily()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12016
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasBillingAddressSpec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12017
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 12019
    :cond_1
    return-void
.end method
