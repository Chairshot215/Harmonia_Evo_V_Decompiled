.class public final Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimePeriod"
.end annotation


# instance fields
.field private cachedSize:I

.field private count_:I

.field private hasCount:Z

.field private hasUnit:Z

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1551
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1566
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    .line 1583
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    .line 1619
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    .line 1551
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1622
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    if-gez v0, :cond_0

    .line 1624
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getSerializedSize()I

    .line 1626
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1633
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getUnit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1637
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1640
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    .line 1641
    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 1568
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1650
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1654
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1655
    :sswitch_0
    return-object p0

    .line 1660
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->setUnit(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    goto :goto_0

    .line 1664
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->setCount(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    goto :goto_0

    .line 1650
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
    .line 1548
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount:Z

    .line 1588
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    .line 1589
    return-object p0
.end method

.method public setUnit(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit:Z

    .line 1571
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    .line 1572
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
    .line 1611
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getUnit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1614
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1617
    :cond_1
    return-void
.end method
