.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadInfoProto"
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation
.end field

.field private apkSize_:J

.field private cachedSize:I

.field private hasApkSize:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    .line 1872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    .line 1929
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    .line 1851
    return-void
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1889
    if-nez p1, :cond_0

    .line 1890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    .line 1895
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    return-object p0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getApkSize()J
    .locals 2

    .prologue
    .line 1857
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1932
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getSerializedSize()I

    .line 1936
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1941
    const/4 v2, 0x0

    .line 1942
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1943
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getApkSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1946
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 1947
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1950
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->cachedSize:I

    .line 1951
    return v2
.end method

.method public hasApkSize()Z
    .locals 1

    .prologue
    .line 1858
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1959
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1960
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1964
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    :sswitch_0
    return-object p0

    .line 1970
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->setApkSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    goto :goto_0

    .line 1974
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;-><init>()V

    .line 1975
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1976
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    goto :goto_0

    .line 1960
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1849
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setApkSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize:Z

    .line 1861
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->apkSize_:J

    .line 1862
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
    .line 1921
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->hasApkSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1922
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getApkSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 1925
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1927
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_1
    return-void
.end method
