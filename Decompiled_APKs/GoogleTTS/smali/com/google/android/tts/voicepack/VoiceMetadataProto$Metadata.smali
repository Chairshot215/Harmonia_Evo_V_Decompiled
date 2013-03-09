.class public final Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoiceMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceMetadataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasDescription:Z

.field private hasLocale:Z

.field private hasRevision:Z

.field private hasSizeKb:Z

.field private hasUrl:Z

.field private locale_:Ljava/lang/String;

.field private revision_:I

.field private sizeKb_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->locale_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->url_:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->revision_:I

    .line 65
    iput v1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->sizeKb_:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->description_:Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getSerializedSize()I

    .line 139
    :cond_0
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->revision_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasRevision()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getRevision()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasSizeKb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getSizeKb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_4
    iput v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->cachedSize:I

    .line 165
    return v0
.end method

.method public getSizeKb()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->sizeKb_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasDescription:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasLocale:Z

    return v0
.end method

.method public hasRevision()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasRevision:Z

    return v0
.end method

.method public hasSizeKb()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasSizeKb:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 173
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :sswitch_0
    return-object p0

    .line 183
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->setLocale(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    goto :goto_0

    .line 187
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->setUrl(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    goto :goto_0

    .line 191
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->setRevision(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    goto :goto_0

    .line 195
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->setSizeKb(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    goto :goto_0

    .line 199
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->setDescription(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasDescription:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->description_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasLocale:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->locale_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setRevision(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasRevision:Z

    .line 53
    iput p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->revision_:I

    .line 54
    return-object p0
.end method

.method public setSizeKb(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasSizeKb:Z

    .line 70
    iput p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->sizeKb_:I

    .line 71
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasUrl:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->url_:Ljava/lang/String;

    .line 37
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
    .line 116
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasRevision()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getRevision()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasSizeKb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getSizeKb()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_4
    return-void
.end method
