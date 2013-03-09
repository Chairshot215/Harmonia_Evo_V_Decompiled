.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadataProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private downloadUrl_:Ljava/lang/String;

.field private fileType_:I

.field private hasDownloadUrl:Z

.field private hasFileType:Z

.field private hasSize:Z

.field private hasVersionCode:Z

.field private size_:J

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12668
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12673
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    .line 12690
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    .line 12707
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    .line 12724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    .line 12771
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    .line 12668
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 12774
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 12776
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSerializedSize()I

    .line 12778
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12725
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 12675
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12783
    const/4 v0, 0x0

    .line 12784
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12785
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12788
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12789
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12792
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12793
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12796
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12797
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12800
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->cachedSize:I

    .line 12801
    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 12708
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 12691
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 12726
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 12674
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType:Z

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 12709
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 12692
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12809
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12810
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 12814
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12815
    :sswitch_0
    return-object p0

    .line 12820
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setFileType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12824
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12828
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12832
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    goto :goto_0

    .line 12810
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 12666
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl:Z

    .line 12729
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->downloadUrl_:Ljava/lang/String;

    .line 12730
    return-object p0
.end method

.method public setFileType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType:Z

    .line 12678
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->fileType_:I

    .line 12679
    return-object p0
.end method

.method public setSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize:Z

    .line 12712
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->size_:J

    .line 12713
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode:Z

    .line 12695
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->versionCode_:I

    .line 12696
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12757
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12758
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12760
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12761
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12763
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12764
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 12766
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->hasDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12767
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12769
    :cond_3
    return-void
.end method
