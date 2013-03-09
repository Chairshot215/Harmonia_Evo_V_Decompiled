.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Citation"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTitleLocalized:Z

.field private hasUrl:Z

.field private titleLocalized_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    .line 156
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    if-gez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getSerializedSize()I

    .line 221
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getTitleLocalized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->cachedSize:I

    .line 236
    return v0
.end method

.method public getTitleLocalized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTitleLocalized()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 245
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :sswitch_0
    return-object p0

    .line 255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->setTitleLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    goto :goto_0

    .line 259
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x62 -> :sswitch_2
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
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v0

    return-object v0
.end method

.method public setTitleLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized:Z

    .line 166
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->titleLocalized_:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl:Z

    .line 183
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->url_:Ljava/lang/String;

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
    .line 206
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasTitleLocalized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getTitleLocalized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 212
    :cond_1
    return-void
.end method
