.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalBadgeImageProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUrl:Z

.field private hasUsage:Z

.field private url_:Ljava/lang/String;

.field private usage_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1525
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->usage_:I

    .line 1542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->url_:Ljava/lang/String;

    .line 1580
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->cachedSize:I

    .line 1515
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1583
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->getSerializedSize()I

    .line 1587
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUsage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->getUsage()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1598
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1601
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->cachedSize:I

    .line 1602
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 1527
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->usage_:I

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUrl:Z

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .prologue
    .line 1526
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUsage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1611
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1615
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1616
    :sswitch_0
    return-object p0

    .line 1621
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->setUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    goto :goto_0

    .line 1625
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    goto :goto_0

    .line 1611
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
    .line 1513
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUrl:Z

    .line 1547
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->url_:Ljava/lang/String;

    .line 1548
    return-object p0
.end method

.method public setUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUsage:Z

    .line 1530
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->usage_:I

    .line 1531
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
    .line 1572
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->getUsage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1576
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1578
    :cond_1
    return-void
.end method
