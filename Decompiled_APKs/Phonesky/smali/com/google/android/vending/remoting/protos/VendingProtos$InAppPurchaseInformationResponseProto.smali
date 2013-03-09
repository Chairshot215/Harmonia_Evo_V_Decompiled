.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppPurchaseInformationResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPurchaseResult:Z

.field private hasSignedResponse:Z

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

.field private signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

.field private statusBarNotification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20010
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20015
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 20034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    .line 20068
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 20113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    .line 20010
    return-void
.end method


# virtual methods
.method public addStatusBarNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20051
    if-nez p1, :cond_0

    .line 20052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20054
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    .line 20057
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20058
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20116
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20118
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSerializedSize()I

    .line 20120
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    return v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1

    .prologue
    .line 20070
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 20125
    const/4 v2, 0x0

    .line 20126
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20127
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 20130
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getStatusBarNotificationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    .line 20131
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 20134
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20135
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 20138
    :cond_2
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    .line 20139
    return v2
.end method

.method public getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .locals 1

    .prologue
    .line 20017
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    return-object v0
.end method

.method public getStatusBarNotificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20037
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    return-object v0
.end method

.method public hasPurchaseResult()Z
    .locals 1

    .prologue
    .line 20069
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public hasSignedResponse()Z
    .locals 1

    .prologue
    .line 20016
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20148
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 20152
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20153
    :sswitch_0
    return-object p0

    .line 20158
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;-><init>()V

    .line 20159
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20160
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 20164
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;-><init>()V

    .line 20165
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20166
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->addStatusBarNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 20170
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 20171
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20172
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 20148
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
    .line 20008
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20072
    if-nez p1, :cond_0

    .line 20073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20075
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult:Z

    .line 20076
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 20077
    return-object p0
.end method

.method public setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20019
    if-nez p1, :cond_0

    .line 20020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20022
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse:Z

    .line 20023
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 20024
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
    .line 20102
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20103
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 20105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getStatusBarNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    .line 20106
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 20108
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20109
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 20111
    :cond_2
    return-void
.end method
