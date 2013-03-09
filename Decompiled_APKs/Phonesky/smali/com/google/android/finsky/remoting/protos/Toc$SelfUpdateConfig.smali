.class public final Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfUpdateConfig"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLatestClientVersionCode:Z

.field private latestClientVersionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->latestClientVersionCode_:I

    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->cachedSize:I

    .line 833
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->cachedSize:I

    if-gez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->getSerializedSize()I

    .line 877
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->cachedSize:I

    return v0
.end method

.method public getLatestClientVersionCode()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->latestClientVersionCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->getLatestClientVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->cachedSize:I

    .line 888
    return v0
.end method

.method public hasLatestClientVersionCode()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 897
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 901
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    :sswitch_0
    return-object p0

    .line 907
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->setLatestClientVersionCode(I)Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    goto :goto_0

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 830
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    move-result-object v0

    return-object v0
.end method

.method public setLatestClientVersionCode(I)Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
    .locals 1
    .parameter "value"

    .prologue
    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    .line 843
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->latestClientVersionCode_:I

    .line 844
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
    .line 865
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;->getLatestClientVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 868
    :cond_0
    return-void
.end method
