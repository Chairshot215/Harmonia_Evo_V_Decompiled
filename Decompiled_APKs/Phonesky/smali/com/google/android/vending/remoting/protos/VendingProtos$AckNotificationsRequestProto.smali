.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AckNotificationsRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSignatureHash:Z

.field private nackNotificationId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20357
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->notificationId_:Ljava/util/List;

    .line 20395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 20414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->nackNotificationId_:Ljava/util/List;

    .line 20474
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->cachedSize:I

    .line 20357
    return-void
.end method


# virtual methods
.method public addNackNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20431
    if-nez p1, :cond_0

    .line 20432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20434
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->nackNotificationId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->nackNotificationId_:Ljava/util/List;

    .line 20437
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->nackNotificationId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20438
    return-object p0
.end method

.method public addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20378
    if-nez p1, :cond_0

    .line 20379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20381
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->notificationId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->notificationId_:Ljava/util/List;

    .line 20384
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->notificationId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20385
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20477
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20479
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getSerializedSize()I

    .line 20481
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->cachedSize:I

    return v0
.end method

.method public getNackNotificationIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20417
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->nackNotificationId_:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20364
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->notificationId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 20486
    const/4 v3, 0x0

    .line 20488
    .local v3, size:I
    const/4 v0, 0x0

    .line 20489
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20490
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 20493
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 20494
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 20496
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->hasSignatureHash()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20497
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 20501
    :cond_1
    const/4 v0, 0x0

    .line 20502
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNackNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20503
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 20506
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 20507
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNackNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 20509
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->cachedSize:I

    .line 20510
    return v3
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 20397
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 20396
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20518
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20519
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 20523
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20524
    :sswitch_0
    return-object p0

    .line 20529
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    goto :goto_0

    .line 20533
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 20534
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20535
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    goto :goto_0

    .line 20539
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->addNackNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    goto :goto_0

    .line 20519
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 20355
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20399
    if-nez p1, :cond_0

    .line 20400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->hasSignatureHash:Z

    .line 20403
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 20404
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
    .line 20463
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNotificationIdList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 20464
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 20466
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->hasSignatureHash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20467
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 20469
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->getNackNotificationIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20470
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 20472
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    return-void
.end method
