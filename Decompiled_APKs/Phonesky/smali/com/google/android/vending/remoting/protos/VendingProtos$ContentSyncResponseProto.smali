.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentSyncResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNumUpdatesAvailable:Z

.field private numUpdatesAvailable_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1424
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->numUpdatesAvailable_:I

    .line 1456
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->cachedSize:I

    .line 1419
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->getSerializedSize()I

    .line 1463
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->cachedSize:I

    return v0
.end method

.method public getNumUpdatesAvailable()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->numUpdatesAvailable_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1468
    const/4 v0, 0x0

    .line 1469
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->hasNumUpdatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->getNumUpdatesAvailable()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1473
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->cachedSize:I

    .line 1474
    return v0
.end method

.method public hasNumUpdatesAvailable()Z
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->hasNumUpdatesAvailable:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1482
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1483
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1487
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1488
    :sswitch_0
    return-object p0

    .line 1493
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->setNumUpdatesAvailable(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    goto :goto_0

    .line 1483
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1417
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setNumUpdatesAvailable(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->hasNumUpdatesAvailable:Z

    .line 1429
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->numUpdatesAvailable_:I

    .line 1430
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
    .line 1451
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->hasNumUpdatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;->getNumUpdatesAvailable()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1454
    :cond_0
    return-void
.end method
