.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryUpdate"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:I

.field private hasCorpus:Z

.field private hasHasMore:Z

.field private hasLibraryId:Z

.field private hasMore_:Z

.field private hasServerToken:Z

.field private hasStatus:Z

.field private libraryId_:Ljava/lang/String;

.field private mutation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;",
            ">;"
        }
    .end annotation
.end field

.field private serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    .line 37
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->libraryId_:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    .line 121
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addMutation(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    if-gez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getSerializedSize()I

    .line 184
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    return v0
.end method

.method public getCorpus()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    return v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    return v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->libraryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMutationCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMutationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 203
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 206
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getHasMore()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 210
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getLibraryId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    :cond_5
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    .line 215
    return v2
.end method

.method public getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    return v0
.end method

.method public hasCorpus()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus:Z

    return v0
.end method

.method public hasHasMore()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore:Z

    return v0
.end method

.method public hasLibraryId()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId:Z

    return v0
.end method

.method public hasServerToken()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 224
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :sswitch_0
    return-object p0

    .line 234
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 238
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setCorpus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 242
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 246
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;-><init>()V

    .line 247
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->addMutation(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 252
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setHasMore(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 256
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v0

    return-object v0
.end method

.method public setCorpus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus:Z

    .line 42
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    .line 43
    return-object p0
.end method

.method public setHasMore(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore:Z

    .line 126
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    .line 127
    return-object p0
.end method

.method public setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->libraryId_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 77
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus:Z

    .line 25
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    .line 26
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 167
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 169
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getHasMore()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getLibraryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 175
    :cond_5
    return-void
.end method
