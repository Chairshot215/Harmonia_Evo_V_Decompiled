.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPendingNotifications:Z

.field private pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26071
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 27370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    .line 27404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    .line 27449
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    .line 26071
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27513
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 27387
    if-nez p1, :cond_0

    .line 27388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27390
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    .line 27393
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27394
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 27452
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 27454
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getSerializedSize()I

    .line 27456
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    return v0
.end method

.method public getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    .locals 1

    .prologue
    .line 27406
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "index"

    .prologue
    .line 27377
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    return-object v0
.end method

.method public getResponseCount()I
    .locals 1

    .prologue
    .line 27375
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27373
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 27461
    const/4 v2, 0x0

    .line 27462
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    .line 27463
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 27466
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27467
    const/16 v3, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27470
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->cachedSize:I

    .line 27471
    return v2
.end method

.method public hasPendingNotifications()Z
    .locals 1

    .prologue
    .line 27405
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27479
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 27480
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 27484
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27485
    :sswitch_0
    return-object p0

    .line 27490
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;-><init>()V

    .line 27491
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 27492
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->addResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    goto :goto_0

    .line 27496
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;-><init>()V

    .line 27497
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27498
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->setPendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    goto :goto_0

    .line 27480
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x132 -> :sswitch_2
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
    .line 26069
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 27408
    if-nez p1, :cond_0

    .line 27409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications:Z

    .line 27412
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->pendingNotifications_:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    .line 27413
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27441
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    .line 27442
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 27444
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27445
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 27447
    :cond_1
    return-void
.end method
