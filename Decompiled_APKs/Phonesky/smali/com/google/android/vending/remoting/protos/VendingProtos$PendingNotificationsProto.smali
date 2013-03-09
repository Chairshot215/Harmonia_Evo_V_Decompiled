.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingNotificationsProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNextCheckMillis:Z

.field private nextCheckMillis_:J

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24203
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    .line 24241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    .line 24280
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    .line 24203
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24224
    if-nez p1, :cond_0

    .line 24225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24227
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    .line 24230
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24231
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 24283
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 24285
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getSerializedSize()I

    .line 24287
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    return v0
.end method

.method public getNextCheckMillis()J
    .locals 2

    .prologue
    .line 24242
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    return-wide v0
.end method

.method public getNotificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24210
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 24292
    const/4 v2, 0x0

    .line 24293
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNotificationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    .line 24294
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 24297
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24298
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNextCheckMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 24301
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->cachedSize:I

    .line 24302
    return v2
.end method

.method public hasNextCheckMillis()Z
    .locals 1

    .prologue
    .line 24243
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24310
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 24311
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 24315
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24316
    :sswitch_0
    return-object p0

    .line 24321
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;-><init>()V

    .line 24322
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24323
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->addNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    goto :goto_0

    .line 24327
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->setNextCheckMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    goto :goto_0

    .line 24311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 24201
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v0

    return-object v0
.end method

.method public setNextCheckMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis:Z

    .line 24246
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis_:J

    .line 24247
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24272
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    .line 24273
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 24275
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24276
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;->getNextCheckMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 24278
    :cond_1
    return-void
.end method
