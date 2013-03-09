.class public final Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseDeclinedData"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasReason:Z

.field private hasShowNotification:Z

.field private reason_:I

.field private showNotification_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    .line 233
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    if-gez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getSerializedSize()I

    .line 305
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getShowNotification()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->cachedSize:I

    .line 320
    return v0
.end method

.method public getShowNotification()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason:Z

    return v0
.end method

.method public hasShowNotification()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 329
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :sswitch_0
    return-object p0

    .line 339
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->setReason(I)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    goto :goto_0

    .line 343
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->setShowNotification(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    goto :goto_0

    .line 329
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
    .line 230
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v0

    return-object v0
.end method

.method public setReason(I)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason:Z

    .line 250
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->reason_:I

    .line 251
    return-object p0
.end method

.method public setShowNotification(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .locals 1
    .parameter "value"

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification:Z

    .line 267
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->showNotification_:Z

    .line 268
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
    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->hasShowNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getShowNotification()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 296
    :cond_1
    return-void
.end method
