.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseMetadataRequestProto"
.end annotation


# instance fields
.field private billingInstrumentType_:I

.field private cachedSize:I

.field private deprecatedRetrieveBillingCountries_:Z

.field private hasBillingInstrumentType:Z

.field private hasDeprecatedRetrieveBillingCountries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11820
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->deprecatedRetrieveBillingCountries_:Z

    .line 11842
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->billingInstrumentType_:I

    .line 11878
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->cachedSize:I

    .line 11820
    return-void
.end method


# virtual methods
.method public getBillingInstrumentType()I
    .locals 1

    .prologue
    .line 11844
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->billingInstrumentType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 11881
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 11883
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->getSerializedSize()I

    .line 11885
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->cachedSize:I

    return v0
.end method

.method public getDeprecatedRetrieveBillingCountries()Z
    .locals 1

    .prologue
    .line 11826
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->deprecatedRetrieveBillingCountries_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11890
    const/4 v0, 0x0

    .line 11891
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasDeprecatedRetrieveBillingCountries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11892
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->getDeprecatedRetrieveBillingCountries()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11895
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasBillingInstrumentType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11896
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->getBillingInstrumentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11899
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->cachedSize:I

    .line 11900
    return v0
.end method

.method public hasBillingInstrumentType()Z
    .locals 1

    .prologue
    .line 11843
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasBillingInstrumentType:Z

    return v0
.end method

.method public hasDeprecatedRetrieveBillingCountries()Z
    .locals 1

    .prologue
    .line 11827
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasDeprecatedRetrieveBillingCountries:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11908
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11909
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 11913
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11914
    :sswitch_0
    return-object p0

    .line 11919
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->setDeprecatedRetrieveBillingCountries(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    goto :goto_0

    .line 11923
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    goto :goto_0

    .line 11909
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 11818
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasBillingInstrumentType:Z

    .line 11847
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->billingInstrumentType_:I

    .line 11848
    return-object p0
.end method

.method public setDeprecatedRetrieveBillingCountries(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 11829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasDeprecatedRetrieveBillingCountries:Z

    .line 11830
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->deprecatedRetrieveBillingCountries_:Z

    .line 11831
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
    .line 11870
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasDeprecatedRetrieveBillingCountries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11871
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->getDeprecatedRetrieveBillingCountries()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 11873
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->hasBillingInstrumentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11874
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;->getBillingInstrumentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 11876
    :cond_1
    return-void
.end method
