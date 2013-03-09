.class public final Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientsAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientsAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEvent"
.end annotation


# instance fields
.field private cachedSize:I

.field private eventTime_:J

.field private hasEventTime:Z

.field private hasTag:Z

.field private tag_:Ljava/lang/String;

.field private values_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->eventTime_:J

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->tag_:Ljava/lang/String;

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->cachedSize:I

    .line 130
    return-void
.end method


# virtual methods
.method public addValues(Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public final clear()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->clearEventTime()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->clearTag()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->clearValues()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->cachedSize:I

    .line 204
    return-object p0
.end method

.method public clearEventTime()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasEventTime:Z

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->eventTime_:J

    .line 146
    return-object p0
.end method

.method public clearTag()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasTag:Z

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->tag_:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public clearValues()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    .line 196
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getSerializedSize()I

    .line 230
    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->cachedSize:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->eventTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasEventTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getValuesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 244
    .local v0, element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 247
    .end local v0           #element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :cond_2
    iput v2, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->cachedSize:I

    .line 248
    return v2
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->tag_:Ljava/lang/String;

    return-object v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->values_:Ljava/util/List;

    return-object v0
.end method

.method public hasEventTime()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasEventTime:Z

    return v0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasTag:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 256
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :sswitch_0
    return-object p0

    .line 266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->setEventTime(J)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->setTag(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    goto :goto_0

    .line 274
    :sswitch_3
    new-instance v1, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;-><init>()V

    .line 275
    .local v1, value:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->addValues(Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    goto :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEventTime(J)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasEventTime:Z

    .line 140
    iput-wide p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->eventTime_:J

    .line 141
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasTag:Z

    .line 157
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->tag_:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasEventTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->hasTag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 220
    .local v0, element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 222
    .end local v0           #element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :cond_2
    return-void
.end method
