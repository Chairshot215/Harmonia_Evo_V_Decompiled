.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckForNotificationsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20290
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20306
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->cachedSize:I

    .line 20290
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20309
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20311
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->getSerializedSize()I

    .line 20313
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 20318
    const/4 v0, 0x0

    .line 20319
    .local v0, size:I
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->cachedSize:I

    .line 20320
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20328
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20329
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 20333
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20334
    :pswitch_0
    return-object p0

    .line 20329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 20288
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20304
    return-void
.end method
