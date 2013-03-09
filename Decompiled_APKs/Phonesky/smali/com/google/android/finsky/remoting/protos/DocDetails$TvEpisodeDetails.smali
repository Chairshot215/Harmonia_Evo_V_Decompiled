.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvEpisodeDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private episodeIndex_:I

.field private hasEpisodeIndex:Z

.field private hasParentDetailsUrl:Z

.field private hasReleaseDate:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4339
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4361
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    .line 4378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    .line 4418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    .line 4339
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4421
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 4423
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getSerializedSize()I

    .line 4425
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    return v0
.end method

.method public getEpisodeIndex()I
    .locals 1

    .prologue
    .line 4362
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    return v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4430
    const/4 v0, 0x0

    .line 4431
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4432
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4435
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4436
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4439
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4440
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4443
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->cachedSize:I

    .line 4444
    return v0
.end method

.method public hasEpisodeIndex()Z
    .locals 1

    .prologue
    .line 4363
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .locals 1

    .prologue
    .line 4346
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 4380
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4453
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4457
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4458
    :sswitch_0
    return-object p0

    .line 4463
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4467
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setEpisodeIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4471
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    goto :goto_0

    .line 4453
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 4336
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    return-object v0
.end method

.method public setEpisodeIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex:Z

    .line 4366
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->episodeIndex_:I

    .line 4367
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl:Z

    .line 4349
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4350
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate:Z

    .line 4383
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->releaseDate_:Ljava/lang/String;

    .line 4384
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
    .line 4407
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4408
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4410
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasEpisodeIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4411
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4413
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4414
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4416
    :cond_2
    return-void
.end method
