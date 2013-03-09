.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trailer"
.end annotation


# instance fields
.field private cachedSize:I

.field private duration_:Ljava/lang/String;

.field private hasDuration:Z

.field private hasThumbnailUrl:Z

.field private hasTitle:Z

.field private hasTrailerId:Z

.field private hasWatchUrl:Z

.field private thumbnailUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private trailerId_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3090
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 3112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 3129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 3146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 3163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 3212
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 3090
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3215
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    if-gez v0, :cond_0

    .line 3217
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getSerializedSize()I

    .line 3219
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3224
    const/4 v0, 0x0

    .line 3225
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3226
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3229
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3230
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3233
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3234
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3237
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3238
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3241
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3242
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3245
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 3246
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3096
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 3165
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 3131
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 3114
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    return v0
.end method

.method public hasTrailerId()Z
    .locals 1

    .prologue
    .line 3097
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    return v0
.end method

.method public hasWatchUrl()Z
    .locals 1

    .prologue
    .line 3148
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3255
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3259
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3260
    :sswitch_0
    return-object p0

    .line 3265
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3269
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3273
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3277
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3281
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3087
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    .line 3168
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 3169
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    .line 3134
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 3135
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    .line 3117
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 3118
    return-object p0
.end method

.method public setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    .line 3100
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 3101
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    .line 3151
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 3152
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
    .line 3195
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3196
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3198
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3199
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3201
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3202
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3204
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3205
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3207
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3208
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3210
    :cond_4
    return-void
.end method
