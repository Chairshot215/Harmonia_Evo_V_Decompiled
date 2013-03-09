.class public final Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseRemovalData"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMalicious:Z

.field private malicious_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    .line 136
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    if-gez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getSerializedSize()I

    .line 180
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    return v0
.end method

.method public getMalicious()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getMalicious()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->cachedSize:I

    .line 191
    return v0
.end method

.method public hasMalicious()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 200
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    :sswitch_0
    return-object p0

    .line 210
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->setMalicious(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    goto :goto_0

    .line 200
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
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v0

    return-object v0
.end method

.method public setMalicious(Z)Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .locals 1
    .parameter "value"

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious:Z

    .line 146
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->malicious_:Z

    .line 147
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
    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->hasMalicious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getMalicious()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 171
    :cond_0
    return-void
.end method
