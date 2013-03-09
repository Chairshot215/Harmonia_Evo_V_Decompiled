.class public final Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoiceMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceMetadataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataList"
.end annotation


# instance fields
.field private cachedSize:I

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private hasRevision:Z

.field private revision_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->revision_:I

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->cachedSize:I

    .line 221
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    invoke-direct {v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 1
    .parameter "value"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object p0
.end method

.method public clearData()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    .line 270
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->cachedSize:I

    if-gez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getSerializedSize()I

    .line 304
    :cond_0
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->cachedSize:I

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->data_:Ljava/util/List;

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->revision_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->hasRevision()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getRevision()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 314
    .local v0, element:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 317
    .end local v0           #element:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_1
    iput v2, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->cachedSize:I

    .line 318
    return v2
.end method

.method public hasRevision()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->hasRevision:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 326
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    :sswitch_0
    return-object p0

    .line 336
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->setRevision(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    goto :goto_0

    .line 340
    :sswitch_2
    new-instance v1, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    invoke-direct {v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;-><init>()V

    .line 341
    .local v1, value:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->addData(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v0

    return-object v0
.end method

.method public setRevision(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 1
    .parameter "value"

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->hasRevision:Z

    .line 231
    iput p1, p0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->revision_:I

    .line 232
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
    .line 290
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->hasRevision()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getRevision()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 294
    .local v0, element:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 296
    .end local v0           #element:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_1
    return-void
.end method
