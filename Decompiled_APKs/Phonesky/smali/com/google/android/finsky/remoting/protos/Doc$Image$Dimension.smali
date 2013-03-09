.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimension"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasHeight:Z

.field private hasWidth:Z

.field private height_:I

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 33
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    .line 50
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    if-gez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getSerializedSize()I

    .line 95
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    .line 110
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 119
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :sswitch_0
    return-object p0

    .line 129
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0

    .line 133
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_2
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
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight:Z

    .line 55
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    .line 56
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .locals 1
    .parameter "value"

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth:Z

    .line 38
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    .line 39
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
    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 86
    :cond_1
    return-void
.end method
