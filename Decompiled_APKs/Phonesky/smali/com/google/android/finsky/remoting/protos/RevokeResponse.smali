.class public final Lcom/google/android/finsky/remoting/protos/RevokeResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RevokeResponse.java"


# instance fields
.field private cachedSize:I

.field private hasLibraryUpdate:Z

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getSerializedSize()I

    .line 58
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    return v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->cachedSize:I

    .line 69
    return v0
.end method

.method public hasLibraryUpdate()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 78
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :sswitch_0
    return-object p0

    .line 88
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 89
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate:Z

    .line 21
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 22
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
    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 49
    :cond_0
    return-void
.end method
