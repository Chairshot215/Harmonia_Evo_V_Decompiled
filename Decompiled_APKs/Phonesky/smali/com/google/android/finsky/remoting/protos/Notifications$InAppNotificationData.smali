.class public final Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppNotificationData"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutOrderId_:Ljava/lang/String;

.field private hasCheckoutOrderId:Z

.field private hasInAppNotificationId:Z

.field private inAppNotificationId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    .line 579
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    if-gez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getSerializedSize()I

    .line 645
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    return v0
.end method

.method public getCheckoutOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getInAppNotificationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getCheckoutOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getInAppNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->cachedSize:I

    .line 660
    return v0
.end method

.method public hasCheckoutOrderId()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId:Z

    return v0
.end method

.method public hasInAppNotificationId()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 669
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    :sswitch_0
    return-object p0

    .line 679
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->setCheckoutOrderId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    goto :goto_0

    .line 683
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->setInAppNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    goto :goto_0

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 576
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutOrderId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId:Z

    .line 589
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->checkoutOrderId_:Ljava/lang/String;

    .line 590
    return-object p0
.end method

.method public setInAppNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId:Z

    .line 606
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->inAppNotificationId_:Ljava/lang/String;

    .line 607
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
    .line 630
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasCheckoutOrderId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getCheckoutOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->hasInAppNotificationId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getInAppNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 636
    :cond_1
    return-void
.end method
