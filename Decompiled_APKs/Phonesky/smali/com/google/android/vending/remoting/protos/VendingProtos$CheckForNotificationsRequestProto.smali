.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckForNotificationsRequestProto"
.end annotation


# instance fields
.field private alarmDuration_:J

.field private cachedSize:I

.field private hasAlarmDuration:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20194
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    .line 20231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    .line 20194
    return-void
.end method


# virtual methods
.method public getAlarmDuration()J
    .locals 2

    .prologue
    .line 20200
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20234
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20236
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getSerializedSize()I

    .line 20238
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 20243
    const/4 v0, 0x0

    .line 20244
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20245
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getAlarmDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20248
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->cachedSize:I

    .line 20249
    return v0
.end method

.method public hasAlarmDuration()Z
    .locals 1

    .prologue
    .line 20201
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20258
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 20262
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20263
    :sswitch_0
    return-object p0

    .line 20268
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->setAlarmDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    goto :goto_0

    .line 20258
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
    .line 20192
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmDuration(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration:Z

    .line 20204
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->alarmDuration_:J

    .line 20205
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20226
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->hasAlarmDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20227
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;->getAlarmDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 20229
    :cond_0
    return-void
.end method
