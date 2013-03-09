.class public final Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DebugInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DebugInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private message_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timing_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;",
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

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->message_:Ljava/util/List;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->timing_:Ljava/util/List;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->message_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->message_:Ljava/util/List;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->message_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public addTiming(Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->timing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->timing_:Ljava/util/List;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->timing_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getSerializedSize()I

    .line 238
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->cachedSize:I

    return v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->message_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 243
    const/4 v3, 0x0

    .line 245
    .local v3, size:I
    const/4 v0, 0x0

    .line 246
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getMessageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 250
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getMessageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 253
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getTimingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    .line 254
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    const/4 v4, 0x2

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 257
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    :cond_1
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->cachedSize:I

    .line 258
    return v3
.end method

.method public getTimingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->timing_:Ljava/util/List;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 267
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :sswitch_0
    return-object p0

    .line 277
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->addMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    goto :goto_0

    .line 281
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;-><init>()V

    .line 282
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->addTiming(Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;

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
    .line 223
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getMessageList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo;->getTimingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;

    .line 227
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 229
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DebugInfoProto$DebugInfo$Timing;
    :cond_1
    return-void
.end method
