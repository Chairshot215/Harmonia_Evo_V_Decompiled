.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseMetadataResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private countries_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

.field private hasCountries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11945
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->countries_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    .line 12481
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->cachedSize:I

    .line 11945
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 12484
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 12486
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->getSerializedSize()I

    .line 12488
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->cachedSize:I

    return v0
.end method

.method public getCountries()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;
    .locals 1

    .prologue
    .line 12445
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->countries_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 12493
    const/4 v0, 0x0

    .line 12494
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->hasCountries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12495
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->getCountries()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12498
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->cachedSize:I

    .line 12499
    return v0
.end method

.method public hasCountries()Z
    .locals 1

    .prologue
    .line 12444
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->hasCountries:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12508
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 12512
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12513
    :sswitch_0
    return-object p0

    .line 12518
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;-><init>()V

    .line 12519
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 12520
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->setCountries(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    goto :goto_0

    .line 12508
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
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
    .line 11943
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCountries(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12447
    if-nez p1, :cond_0

    .line 12448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->hasCountries:Z

    .line 12451
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->countries_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    .line 12452
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
    .line 12476
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->hasCountries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12477
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->getCountries()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 12479
    :cond_0
    return-void
.end method
