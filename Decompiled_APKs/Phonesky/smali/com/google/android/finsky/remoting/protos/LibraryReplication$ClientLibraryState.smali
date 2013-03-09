.class public final Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LibraryReplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/LibraryReplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLibraryState"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:I

.field private hasCorpus:Z

.field private hasHashCodeSum:Z

.field private hasLibraryId:Z

.field private hasLibrarySize:Z

.field private hasServerToken:Z

.field private hashCodeSum_:J

.field private libraryId_:Ljava/lang/String;

.field private librarySize_:I

.field private serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 133
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->corpus_:I

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->libraryId_:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hashCodeSum_:J

    .line 201
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->librarySize_:I

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    .line 128
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    if-gez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getSerializedSize()I

    .line 258
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    return v0
.end method

.method public getCorpus()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->corpus_:I

    return v0
.end method

.method public getHashCodeSum()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hashCodeSum_:J

    return-wide v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->libraryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrarySize()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->librarySize_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasCorpus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getCorpus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasServerToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getHashCodeSum()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getLibrarySize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibraryId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    .line 285
    return v0
.end method

.method public getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCorpus()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasCorpus:Z

    return v0
.end method

.method public hasHashCodeSum()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    return v0
.end method

.method public hasLibraryId()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    return v0
.end method

.method public hasLibrarySize()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    return v0
.end method

.method public hasServerToken()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 294
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    :sswitch_0
    return-object p0

    .line 304
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setCorpus(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    .line 308
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    .line 312
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setHashCodeSum(J)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    .line 316
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setLibrarySize(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    .line 320
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    move-result-object v0

    return-object v0
.end method

.method public setCorpus(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasCorpus:Z

    .line 138
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->corpus_:I

    .line 139
    return-object p0
.end method

.method public setHashCodeSum(J)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 1
    .parameter "value"

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    .line 189
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hashCodeSum_:J

    .line 190
    return-object p0
.end method

.method public setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 1
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    .line 155
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->libraryId_:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setLibrarySize(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 1
    .parameter "value"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    .line 206
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->librarySize_:I

    .line 207
    return-object p0
.end method

.method public setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .locals 1
    .parameter "value"

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    .line 172
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 173
    return-object p0
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
    .line 234
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasCorpus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getCorpus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasServerToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getHashCodeSum()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getLibrarySize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->hasLibraryId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 249
    :cond_4
    return-void
.end method
