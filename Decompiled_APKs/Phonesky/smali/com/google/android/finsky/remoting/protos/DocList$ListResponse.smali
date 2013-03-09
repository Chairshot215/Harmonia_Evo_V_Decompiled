.class public final Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListResponse"
.end annotation


# instance fields
.field private bucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private doc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-object p0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getSerializedSize()I

    .line 113
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    return v0
.end method

.method public getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getDocCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->doc_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 120
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 123
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 124
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 127
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_1
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    .line 128
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 137
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    :sswitch_0
    return-object p0

    .line 147
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;-><init>()V

    .line 148
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    goto :goto_0

    .line 153
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 154
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    goto :goto_0

    .line 137
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

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
    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 99
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 101
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 102
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 104
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_1
    return-void
.end method
