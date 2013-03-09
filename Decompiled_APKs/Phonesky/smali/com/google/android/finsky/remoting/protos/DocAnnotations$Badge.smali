.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Badge"
.end annotation


# instance fields
.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBrowseUrl:Z

.field private hasTitle:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->title_:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->image_:Ljava/util/List;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->browseUrl_:Ljava/lang/String;

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->cachedSize:I

    .line 107
    return-void
.end method


# virtual methods
.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 1
    .parameter "value"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->image_:Ljava/util/List;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object p0
.end method

.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->cachedSize:I

    if-gez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getSerializedSize()I

    .line 212
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->cachedSize:I

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getImageList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 223
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 226
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasBrowseUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getBrowseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 230
    :cond_2
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->cachedSize:I

    .line 231
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBrowseUrl()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasBrowseUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 240
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    :sswitch_0
    return-object p0

    .line 250
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    goto :goto_0

    .line 254
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 255
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 256
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    goto :goto_0

    .line 260
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 1
    .parameter "value"

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasBrowseUrl:Z

    .line 167
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->browseUrl_:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .locals 1
    .parameter "value"

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasTitle:Z

    .line 117
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->title_:Ljava/lang/String;

    .line 118
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
    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getImageList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 198
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 200
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasBrowseUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getBrowseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 203
    :cond_2
    return-void
.end method
