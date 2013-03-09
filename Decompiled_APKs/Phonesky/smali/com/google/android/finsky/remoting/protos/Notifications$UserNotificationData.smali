.class public final Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserNotificationData"
.end annotation


# instance fields
.field private cachedSize:I

.field private dialogText_:Ljava/lang/String;

.field private dialogTitle_:Ljava/lang/String;

.field private hasDialogText:Z

.field private hasDialogTitle:Z

.field private hasNotificationText:Z

.field private hasNotificationTitle:Z

.field private hasTickerText:Z

.field private notificationText_:Ljava/lang/String;

.field private notificationTitle_:Ljava/lang/String;

.field private tickerText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    .line 422
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    .line 366
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    if-gez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getSerializedSize()I

    .line 494
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    return v0
.end method

.method public getDialogText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getTickerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->cachedSize:I

    .line 521
    return v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDialogText()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText:Z

    return v0
.end method

.method public hasDialogTitle()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle:Z

    return v0
.end method

.method public hasNotificationText()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText:Z

    return v0
.end method

.method public hasNotificationTitle()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle:Z

    return v0
.end method

.method public hasTickerText()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 530
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 534
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    :sswitch_0
    return-object p0

    .line 540
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setNotificationTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 544
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setNotificationText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 548
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setTickerText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 552
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setDialogTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 556
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->setDialogText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    goto :goto_0

    .line 530
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 363
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v0

    return-object v0
.end method

.method public setDialogText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText:Z

    .line 444
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogText_:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle:Z

    .line 427
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->dialogTitle_:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setNotificationText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText:Z

    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationText_:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle:Z

    .line 376
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->notificationTitle_:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1
    .parameter "value"

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText:Z

    .line 410
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->tickerText_:Ljava/lang/String;

    .line 411
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
    .line 470
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasNotificationText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasTickerText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getTickerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 482
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->hasDialogText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 485
    :cond_4
    return-void
.end method
