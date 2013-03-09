.class public final Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LibraryReplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/LibraryReplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryReplicationResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private update_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->update_:Ljava/util/List;

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->cachedSize:I

    .line 343
    return-void
.end method


# virtual methods
.method public addUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->update_:Ljava/util/List;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->getSerializedSize()I

    .line 406
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->getUpdateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 413
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 416
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :cond_0
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->cachedSize:I

    .line 417
    return v2
.end method

.method public getUpdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->update_:Ljava/util/List;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 426
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    :sswitch_0
    return-object p0

    .line 436
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 437
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 438
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->addUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    goto :goto_0

    .line 426
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
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->getUpdateList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 395
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 397
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :cond_0
    return-void
.end method
