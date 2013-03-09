.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvSeasonDetails"
.end annotation


# instance fields
.field private broadcaster_:Ljava/lang/String;

.field private cachedSize:I

.field private episodeCount_:I

.field private expectedEpisodeCount_:I

.field private hasBroadcaster:Z

.field private hasEpisodeCount:Z

.field private hasExpectedEpisodeCount:Z

.field private hasParentDetailsUrl:Z

.field private hasReleaseDate:Z

.field private hasSeasonIndex:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;

.field private seasonIndex_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4097
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4119
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    .line 4136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    .line 4153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    .line 4170
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    .line 4187
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    .line 4239
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    .line 4097
    return-void
.end method


# virtual methods
.method public getBroadcaster()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4242
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 4244
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSerializedSize()I

    .line 4246
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    return v0
.end method

.method public getEpisodeCount()I
    .locals 1

    .prologue
    .line 4171
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    return v0
.end method

.method public getExpectedEpisodeCount()I
    .locals 1

    .prologue
    .line 4188
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    return v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4103
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonIndex()I
    .locals 1

    .prologue
    .line 4120
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4251
    const/4 v0, 0x0

    .line 4252
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4253
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4256
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4257
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSeasonIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4260
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4261
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4264
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4265
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4268
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4269
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getEpisodeCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4272
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4273
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getExpectedEpisodeCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4276
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    .line 4277
    return v0
.end method

.method public hasBroadcaster()Z
    .locals 1

    .prologue
    .line 4155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    return v0
.end method

.method public hasEpisodeCount()Z
    .locals 1

    .prologue
    .line 4172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    return v0
.end method

.method public hasExpectedEpisodeCount()Z
    .locals 1

    .prologue
    .line 4189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .locals 1

    .prologue
    .line 4104
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 4138
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    return v0
.end method

.method public hasSeasonIndex()Z
    .locals 1

    .prologue
    .line 4121
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4285
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4286
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4290
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4291
    :sswitch_0
    return-object p0

    .line 4296
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4300
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setSeasonIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4304
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4308
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4312
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4316
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->setExpectedEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    goto :goto_0

    .line 4286
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 4094
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    .line 4158
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->broadcaster_:Ljava/lang/String;

    .line 4159
    return-object p0
.end method

.method public setEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    .line 4175
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->episodeCount_:I

    .line 4176
    return-object p0
.end method

.method public setExpectedEpisodeCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    .line 4192
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount_:I

    .line 4193
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    .line 4107
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 4108
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    .line 4141
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->releaseDate_:Ljava/lang/String;

    .line 4142
    return-object p0
.end method

.method public setSeasonIndex(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 4123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    .line 4124
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->seasonIndex_:I

    .line 4125
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
    .line 4219
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4220
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4222
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4223
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getSeasonIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4225
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4226
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4228
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4229
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4231
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4232
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getEpisodeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4234
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4235
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getExpectedEpisodeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4237
    :cond_5
    return-void
.end method
