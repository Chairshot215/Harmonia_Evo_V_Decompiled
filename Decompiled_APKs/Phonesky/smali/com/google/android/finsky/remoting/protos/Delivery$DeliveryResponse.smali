.class public final Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Delivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Delivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeliveryResponse"
.end annotation


# instance fields
.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private cachedSize:I

.field private hasAppDeliveryData:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getSerializedSize()I

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->cachedSize:I

    .line 102
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    return v0
.end method

.method public hasAppDeliveryData()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 111
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    :sswitch_0
    return-object p0

    .line 121
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    goto :goto_0

    .line 125
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 126
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    goto :goto_0

    .line 111
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData:Z

    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 47
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus:Z

    .line 26
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->status_:I

    .line 27
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
    .line 72
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 78
    :cond_1
    return-void
.end method
