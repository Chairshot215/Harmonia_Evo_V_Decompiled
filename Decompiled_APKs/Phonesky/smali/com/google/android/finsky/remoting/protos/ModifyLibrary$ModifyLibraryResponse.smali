.class public final Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ModifyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ModifyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyLibraryResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLibraryUpdate:Z

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->cachedSize:I

    .line 257
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->getSerializedSize()I

    .line 307
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->cachedSize:I

    return v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->cachedSize:I

    .line 318
    return v0
.end method

.method public hasLibraryUpdate()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 327
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    :sswitch_0
    return-object p0

    .line 337
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 338
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    goto :goto_0

    .line 327
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
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->hasLibraryUpdate:Z

    .line 270
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 271
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
    .line 295
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 298
    :cond_0
    return-void
.end method
