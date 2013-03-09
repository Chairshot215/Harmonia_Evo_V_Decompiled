.class public final Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseNotificationResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

.field private hasDebugInfo:Z

.field private hasLocalizedErrorMessage:Z

.field private hasPurchaseId:Z

.field private hasStatus:Z

.field private localizedErrorMessage_:Ljava/lang/String;

.field private purchaseId_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getSerializedSize()I

    .line 128
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    return v0
.end method

.method public getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    return-object v0
.end method

.method public getLocalizedErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->cachedSize:I

    .line 151
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    return v0
.end method

.method public hasDebugInfo()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo:Z

    return v0
.end method

.method public hasLocalizedErrorMessage()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    return v0
.end method

.method public hasPurchaseId()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 160
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    :sswitch_0
    return-object p0

    .line 170
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 174
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;-><init>()V

    .line 175
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 180
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 184
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo:Z

    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    .line 80
    return-object p0
.end method

.method public setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus:Z

    .line 25
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->status_:I

    .line 26
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
    .line 107
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_3
    return-void
.end method
