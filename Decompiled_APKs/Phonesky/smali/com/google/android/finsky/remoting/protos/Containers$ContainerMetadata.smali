.class public final Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Containers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Containers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerMetadata"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private estimatedResults_:J

.field private hasAnalyticsCookie:Z

.field private hasBrowseUrl:Z

.field private hasEstimatedResults:Z

.field private hasNextPageUrl:Z

.field private hasOrdered:Z

.field private hasRelevance:Z

.field private nextPageUrl_:Ljava/lang/String;

.field private ordered_:Z

.field private relevance_:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getSerializedSize()I

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    return v0
.end method

.method public getEstimatedResults()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    return-wide v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    return v0
.end method

.method public getRelevance()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getRelevance()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getEstimatedResults()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getOrdered()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->cachedSize:I

    .line 190
    return v0
.end method

.method public hasAnalyticsCookie()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasBrowseUrl()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    return v0
.end method

.method public hasEstimatedResults()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    return v0
.end method

.method public hasOrdered()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered:Z

    return v0
.end method

.method public hasRelevance()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 199
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :sswitch_0
    return-object p0

    .line 209
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 217
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setRelevance(D)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 221
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 225
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 229
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->setOrdered(Z)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->analyticsCookie_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->browseUrl_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    .line 71
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->estimatedResults_:J

    .line 72
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->nextPageUrl_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setOrdered(Z)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered:Z

    .line 105
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->ordered_:Z

    .line 106
    return-object p0
.end method

.method public setRelevance(D)Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance:Z

    .line 54
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->relevance_:D

    .line 55
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
    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasNextPageUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasRelevance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getRelevance()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasEstimatedResults()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getEstimatedResults()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasAnalyticsCookie()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->hasOrdered()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getOrdered()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 150
    :cond_5
    return-void
.end method
