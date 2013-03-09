.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopupInfo"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasOptionsContainerDocid:Z

.field private hasOptionsListUrl:Z

.field private hasSubtitle:Z

.field private optionsContainerDocid_:Ljava/lang/String;

.field private optionsListUrl_:Ljava/lang/String;

.field private subtitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsContainerDocid_:Ljava/lang/String;

    .line 1805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsListUrl_:Ljava/lang/String;

    .line 1822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->subtitle_:Ljava/lang/String;

    .line 1862
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->cachedSize:I

    .line 1783
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1865
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1867
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getSerializedSize()I

    .line 1869
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->cachedSize:I

    return v0
.end method

.method public getOptionsContainerDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsContainerDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionsListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1874
    const/4 v0, 0x0

    .line 1875
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsContainerDocid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getOptionsContainerDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1879
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsListUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1880
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getOptionsListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasSubtitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1884
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1887
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->cachedSize:I

    .line 1888
    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasOptionsContainerDocid()Z
    .locals 1

    .prologue
    .line 1790
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsContainerDocid:Z

    return v0
.end method

.method public hasOptionsListUrl()Z
    .locals 1

    .prologue
    .line 1807
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsListUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 1824
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasSubtitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1896
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1897
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1901
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1902
    :sswitch_0
    return-object p0

    .line 1907
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->setOptionsContainerDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    goto :goto_0

    .line 1911
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->setOptionsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    goto :goto_0

    .line 1915
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    goto :goto_0

    .line 1897
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
    .line 1780
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v0

    return-object v0
.end method

.method public setOptionsContainerDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsContainerDocid:Z

    .line 1793
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsContainerDocid_:Ljava/lang/String;

    .line 1794
    return-object p0
.end method

.method public setOptionsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsListUrl:Z

    .line 1810
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->optionsListUrl_:Ljava/lang/String;

    .line 1811
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasSubtitle:Z

    .line 1827
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->subtitle_:Ljava/lang/String;

    .line 1828
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
    .line 1851
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsContainerDocid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getOptionsContainerDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1854
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasOptionsListUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getOptionsListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1857
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasSubtitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1858
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1860
    :cond_2
    return-void
.end method
