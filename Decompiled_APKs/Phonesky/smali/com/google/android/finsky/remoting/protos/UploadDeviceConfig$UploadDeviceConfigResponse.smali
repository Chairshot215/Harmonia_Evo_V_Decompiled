.class public final Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UploadDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadDeviceConfigResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUploadDeviceConfigToken:Z

.field private uploadDeviceConfigToken_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->uploadDeviceConfigToken_:Ljava/lang/String;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->cachedSize:I

    .line 173
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->getSerializedSize()I

    .line 217
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->hasUploadDeviceConfigToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->getUploadDeviceConfigToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->cachedSize:I

    .line 228
    return v0
.end method

.method public getUploadDeviceConfigToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->uploadDeviceConfigToken_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUploadDeviceConfigToken()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->hasUploadDeviceConfigToken:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 237
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    :sswitch_0
    return-object p0

    .line 247
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->setUploadDeviceConfigToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public setUploadDeviceConfigToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->hasUploadDeviceConfigToken:Z

    .line 183
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->uploadDeviceConfigToken_:Ljava/lang/String;

    .line 184
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
    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->hasUploadDeviceConfigToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->getUploadDeviceConfigToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
