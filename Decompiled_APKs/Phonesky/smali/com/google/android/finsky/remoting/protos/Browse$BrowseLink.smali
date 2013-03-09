.class public final Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowseLink"
.end annotation


# instance fields
.field private cachedSize:I

.field private dataUrl_:Ljava/lang/String;

.field private hasDataUrl:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 231
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    if-gez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getSerializedSize()I

    .line 296
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    return v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 311
    return v0
.end method

.method public hasDataUrl()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 320
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :sswitch_0
    return-object p0

    .line 330
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 334
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    move-result-object v0

    return-object v0
.end method

.method public setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    .line 241
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 242
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
    .line 281
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 287
    :cond_1
    return-void
.end method
