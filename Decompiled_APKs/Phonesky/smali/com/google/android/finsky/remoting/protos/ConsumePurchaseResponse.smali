.class public final Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ConsumePurchaseResponse.java"


# instance fields
.field private cachedSize:I

.field private hasLibraryUpdate:Z

.field private hasStatus:Z

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->status_:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getSerializedSize()I

    .line 85
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->cachedSize:I

    return v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->cachedSize:I

    .line 100
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->status_:I

    return v0
.end method

.method public hasLibraryUpdate()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 109
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 120
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    goto :goto_0

    .line 125
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    goto :goto_0

    .line 109
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasLibraryUpdate:Z

    .line 27
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 28
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasStatus:Z

    .line 44
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->status_:I

    .line 45
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
    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 76
    :cond_1
    return-void
.end method
