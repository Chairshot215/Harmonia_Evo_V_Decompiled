.class public final Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation


# instance fields
.field private cachedSize:I

.field private commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

.field private hasCommands:Z

.field private hasPayload:Z

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Notifications$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

.field private preFetch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$PreFetch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 35
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public addNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
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
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public addPreFetch(Lcom/google/android/finsky/remoting/protos/Response$PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public clearCommands()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 49
    return-object p0
.end method

.method public clearNotification()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    .line 115
    return-object p0
.end method

.method public clearPreFetch()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 82
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    if-gez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getSerializedSize()I

    .line 161
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    return v0
.end method

.method public getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    return-object v0
.end method

.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Notifications$Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    return-object v0
.end method

.method public getPreFetchCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreFetchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$PreFetch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 176
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 179
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    .line 180
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 183
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 184
    return v2
.end method

.method public hasCommands()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 193
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    :sswitch_0
    return-object p0

    .line 203
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;-><init>()V

    .line 204
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 209
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;-><init>()V

    .line 210
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 215
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;-><init>()V

    .line 216
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->addPreFetch(Lcom/google/android/finsky/remoting/protos/Response$PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 221
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;-><init>()V

    .line 222
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->addNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 44
    return-object p0
.end method

.method public setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 24
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
    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 147
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 149
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    .line 150
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 152
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :cond_3
    return-void
.end method
