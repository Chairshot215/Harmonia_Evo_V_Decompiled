.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpCookie"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasValue:Z

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->name_:Ljava/lang/String;

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->value_:Ljava/lang/String;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->cachedSize:I

    .line 195
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->cachedSize:I

    if-gez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getSerializedSize()I

    .line 262
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->cachedSize:I

    .line 277
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasName:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 286
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    :sswitch_0
    return-object p0

    .line 296
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    goto :goto_0

    .line 300
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    goto :goto_0

    .line 286
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasName:Z

    .line 205
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->name_:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasValue:Z

    .line 222
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->value_:Ljava/lang/String;

    .line 223
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
    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_1
    return-void
.end method
